using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace DbEntity.DbModels;

public partial class cyberSecurityContext : DbContext
{
    public cyberSecurityContext(DbContextOptions<cyberSecurityContext> options)
        : base(options)
    {
    }

    public virtual DbSet<absenceCategory> absenceCategory { get; set; }

    public virtual DbSet<absenceHistory> absenceHistory { get; set; }

    public virtual DbSet<agency> agency { get; set; }

    public virtual DbSet<consultationCategory> consultationCategory { get; set; }

    public virtual DbSet<consultationQuestion> consultationQuestion { get; set; }

    public virtual DbSet<course> course { get; set; }

    public virtual DbSet<courseCategory> courseCategory { get; set; }

    public virtual DbSet<courseData> courseData { get; set; }

    public virtual DbSet<coursePlan> coursePlan { get; set; }

    public virtual DbSet<courseSchedule> courseSchedule { get; set; }

    public virtual DbSet<courseTeacher> courseTeacher { get; set; }

    public virtual DbSet<creditCertification> creditCertification { get; set; }

    public virtual DbSet<creditCertificationFiles> creditCertificationFiles { get; set; }

    public virtual DbSet<department> department { get; set; }

    public virtual DbSet<effectTracking> effectTracking { get; set; }

    public virtual DbSet<jobCategory> jobCategory { get; set; }

    public virtual DbSet<jobTitle> jobTitle { get; set; }

    public virtual DbSet<learningHistory> learningHistory { get; set; }

    public virtual DbSet<questionnaire> questionnaire { get; set; }

    public virtual DbSet<questionnaireCategory> questionnaireCategory { get; set; }

    public virtual DbSet<questionnaireHistory> questionnaireHistory { get; set; }

    public virtual DbSet<questionnaireQuestion> questionnaireQuestion { get; set; }

    public virtual DbSet<review> review { get; set; }

    public virtual DbSet<reviewFile> reviewFile { get; set; }

    public virtual DbSet<roles> roles { get; set; }

    public virtual DbSet<school> school { get; set; }

    public virtual DbSet<student> student { get; set; }

    public virtual DbSet<studentContactStatus> studentContactStatus { get; set; }

    public virtual DbSet<studentStatusLog> studentStatusLog { get; set; }

    public virtual DbSet<tempCourseCreditFee> tempCourseCreditFee { get; set; }

    public virtual DbSet<tempFutureCourses> tempFutureCourses { get; set; }

    public virtual DbSet<tempLearningHistory> tempLearningHistory { get; set; }

    public virtual DbSet<tempNonProjectRegistrationData> tempNonProjectRegistrationData { get; set; }

    public virtual DbSet<tempRegistration> tempRegistration { get; set; }

    public virtual DbSet<unit> unit { get; set; }

    public virtual DbSet<users> users { get; set; }

    public virtual DbSet<verification> verification { get; set; }

    public virtual DbSet<visitContent> visitContent { get; set; }

    public virtual DbSet<visitFiles> visitFiles { get; set; }

    public virtual DbSet<visitHistory> visitHistory { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder
            .UseCollation("utf8mb4_0900_ai_ci")
            .HasCharSet("utf8mb4");

        modelBuilder.Entity<absenceCategory>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("缺曠類別資料表，儲存缺曠的不同類別資訊"));

            entity.Property(e => e.id).HasComment("類別ID，主鍵，自動遞增");
            entity.Property(e => e.name)
                .HasMaxLength(100)
                .HasComment("類別名稱");
        });

        modelBuilder.Entity<absenceHistory>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("缺曠歷程資料表，儲存學員的缺曠紀錄"));

            entity.HasIndex(e => e.absenceCategory_id, "absenceCategory_id");

            entity.HasIndex(e => e.learningHistory_id, "learningHistory_id");

            entity.Property(e => e.id).HasComment("缺曠ID，主鍵，自動遞增");
            entity.Property(e => e.absenceCategory_id).HasComment("缺曠類別ID，參照缺曠類別資料表的ID");
            entity.Property(e => e.hours).HasComment("缺曠時數，使用整數表示");
            entity.Property(e => e.learningHistory_id).HasComment("歷程ID，參照學習歷程資料表的ID");

            entity.HasOne(d => d.absenceCategory).WithMany(p => p.absenceHistory)
                .HasForeignKey(d => d.absenceCategory_id)
                .HasConstraintName("absencehistory_ibfk_2");

            entity.HasOne(d => d.learningHistory).WithMany(p => p.absenceHistory)
                .HasForeignKey(d => d.learningHistory_id)
                .HasConstraintName("absencehistory_ibfk_1");
        });

        modelBuilder.Entity<agency>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("機關資料表，儲存機關的基本資料"));

            entity.Property(e => e.id).HasComment("單位ID，主鍵，自動遞增");
            entity.Property(e => e.area).HasComment("區域編號 (1: 北區, 2: 中區, 3: 南區, 4: 西區, 5: 東區, 6: 離島區)");
            entity.Property(e => e.code)
                .HasMaxLength(50)
                .HasComment("機關編號");
            entity.Property(e => e.name)
                .HasMaxLength(255)
                .HasComment("機關名稱");
        });

        modelBuilder.Entity<consultationCategory>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("儲存不同諮詢類別的表格，例如法律、健康等"));

            entity.Property(e => e.id).HasComment("類別ID，唯一");
            entity.Property(e => e.name)
                .HasMaxLength(255)
                .HasComment("諮詢類別名稱，例如法律諮詢、健康諮詢");
        });

        modelBuilder.Entity<consultationQuestion>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("儲存每個問題及答案的表格，並與問題類別相關聯"));

            entity.HasIndex(e => e.category_id, "category_id");

            entity.Property(e => e.id).HasComment("問題ID，唯一");
            entity.Property(e => e.answer)
                .HasMaxLength(255)
                .HasComment("答案內容");
            entity.Property(e => e.category_id).HasComment("所屬的類別ID，指向諮詢類別表");
            entity.Property(e => e.created_at)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasComment("創建時間")
                .HasColumnType("datetime");
            entity.Property(e => e.question)
                .HasMaxLength(255)
                .HasComment("問題內容");
            entity.Property(e => e.update_at)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasComment("更新時間")
                .HasColumnType("datetime");

            entity.HasOne(d => d.category).WithMany(p => p.consultationQuestion)
                .HasForeignKey(d => d.category_id)
                .HasConstraintName("consultationquestion_ibfk_1");
        });

        modelBuilder.Entity<course>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("課程資料表，儲存課程的基本資訊，包括課程ID、編號、名稱和類別ID"));

            entity.HasIndex(e => e.category_id, "category_id");

            entity.HasIndex(e => e.code, "code").IsUnique();

            entity.Property(e => e.id).HasComment("課程ID，主鍵，自動遞增");
            entity.Property(e => e.category_id).HasComment("類別ID，參照課程類別資料表的ID");
            entity.Property(e => e.code)
                .HasMaxLength(10)
                .HasComment("課程編號，唯一且不可為空");
            entity.Property(e => e.name)
                .HasMaxLength(100)
                .HasComment("課程名稱，不可為空");

            entity.HasOne(d => d.category).WithMany(p => p.course)
                .HasForeignKey(d => d.category_id)
                .HasConstraintName("course_ibfk_1");
        });

        modelBuilder.Entity<courseCategory>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("課程類別資料表，儲存課程類別的基本資訊，包括類別ID、編號、名稱和備註"));

            entity.HasIndex(e => e.code, "code").IsUnique();

            entity.Property(e => e.id).HasComment("類別ID，主鍵，自動遞增");
            entity.Property(e => e.code)
                .HasMaxLength(10)
                .HasComment("類別編號，唯一且不可為空");
            entity.Property(e => e.name)
                .HasMaxLength(100)
                .HasComment("類別名稱，不可為空");
            entity.Property(e => e.note)
                .HasMaxLength(255)
                .HasComment("備註，這是可選欄位");
        });

        modelBuilder.Entity<courseData>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("課程資料表，儲存各課程的詳細資料，包括課程代碼、名稱、開課日期、學分、費用等"));

            entity.HasIndex(e => e.code, "code").IsUnique();

            entity.HasIndex(e => e.course_id, "course_id");

            entity.HasIndex(e => e.school_id, "school_id");

            entity.Property(e => e.id).HasComment("課程資料ID，主鍵，自動遞增");
            entity.Property(e => e.actual_end_date)
                .HasComment("實際結業日期")
                .HasColumnType("datetime");
            entity.Property(e => e.actual_start_date)
                .HasComment("實際開課日期")
                .HasColumnType("datetime");
            entity.Property(e => e.code)
                .HasMaxLength(20)
                .HasComment("課程代碼，唯一且不可為空");
            entity.Property(e => e.contact_name)
                .HasMaxLength(50)
                .HasComment("聯絡人名稱");
            entity.Property(e => e.contact_phone)
                .HasMaxLength(50)
                .HasComment("聯絡人電話");
            entity.Property(e => e.course_content)
                .HasMaxLength(1000)
                .HasComment("課程內容");
            entity.Property(e => e.course_id).HasComment("課程ID，參照課程資料表的ID");
            entity.Property(e => e.course_mode).HasComment("上課方式，1=線上，2=實體，3=混合");
            entity.Property(e => e.course_status).HasComment("課程狀態：1=開課中, 2=已結束, 3=已取消");
            entity.Property(e => e.course_type).HasComment("開課類型，1 = 資安職能訓練，2 = 學分班");
            entity.Property(e => e.credits).HasComment("學分數");
            entity.Property(e => e.discount_available).HasComment("是否有學費折扣優惠，1 = 有折扣，0 = 沒有折扣");
            entity.Property(e => e.end_date)
                .HasComment("結業日期")
                .HasColumnType("datetime");
            entity.Property(e => e.extra_cost).HasComment("額外費用");
            entity.Property(e => e.location)
                .HasMaxLength(255)
                .HasComment("上課地點");
            entity.Property(e => e.name)
                .HasMaxLength(100)
                .HasComment("課程名稱，不可為空");
            entity.Property(e => e.participants_count).HasComment("參加人數");
            entity.Property(e => e.remark)
                .HasMaxLength(500)
                .HasComment("備註欄");
            entity.Property(e => e.satisfaction_rating).HasComment("課程滿意度");
            entity.Property(e => e.school_id).HasComment("學校ID，參照學校資料表的ID");
            entity.Property(e => e.start_date)
                .HasComment("開課日期")
                .HasColumnType("datetime");
            entity.Property(e => e.teacher)
                .HasMaxLength(100)
                .HasComment("授課老師名稱");
            entity.Property(e => e.total_hours).HasComment("總時數");
            entity.Property(e => e.training_count).HasComment("訓練人數");
            entity.Property(e => e.tuition_fee).HasComment("學費");

            entity.HasOne(d => d.course).WithMany(p => p.courseData)
                .HasForeignKey(d => d.course_id)
                .HasConstraintName("coursedata_ibfk_1");

            entity.HasOne(d => d.school).WithMany(p => p.courseData)
                .HasForeignKey(d => d.school_id)
                .HasConstraintName("coursedata_ibfk_2");
        });

        modelBuilder.Entity<coursePlan>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("課程規劃資料表，儲存課程的規劃內容，包括課程內容、授課老師、上課時段等"));

            entity.HasIndex(e => e.courseData_id, "courseData_id");

            entity.HasIndex(e => e.schedule_id, "schedule_id");

            entity.HasIndex(e => e.teacher_id, "teacher_id");

            entity.Property(e => e.id).HasComment("規劃ID，主鍵，自動遞增");
            entity.Property(e => e.courseData_id).HasComment("課程ID，參照課程資料表的ID");
            entity.Property(e => e.course_content)
                .HasMaxLength(1000)
                .HasComment("課程內容，描述課程的內容");
            entity.Property(e => e.hours).HasComment("時數");
            entity.Property(e => e.schedule_id).HasComment("時段ID，參照課程上課時段表的ID");
            entity.Property(e => e.teacher_id).HasComment("授課老師ID，參照課程授課老師表的ID");

            entity.HasOne(d => d.courseData).WithMany(p => p.coursePlan)
                .HasForeignKey(d => d.courseData_id)
                .HasConstraintName("courseplan_ibfk_1");

            entity.HasOne(d => d.schedule).WithMany(p => p.coursePlan)
                .HasForeignKey(d => d.schedule_id)
                .HasConstraintName("courseplan_ibfk_3");

            entity.HasOne(d => d.teacher).WithMany(p => p.coursePlan)
                .HasForeignKey(d => d.teacher_id)
                .HasConstraintName("courseplan_ibfk_2");
        });

        modelBuilder.Entity<courseSchedule>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("課程上課時段資料表，儲存每門課程的上課時段資訊"));

            entity.HasIndex(e => e.courseData_id, "courseData_id");

            entity.Property(e => e.id).HasComment("時段ID，主鍵，自動遞增");
            entity.Property(e => e.courseData_id).HasComment("課程ID，參照課程資料表的ID");
            entity.Property(e => e.end_time)
                .HasComment("下課時間，描述具體的下課時段")
                .HasColumnType("time");
            entity.Property(e => e.start_time)
                .HasComment("上課時間，描述具體的上課時段")
                .HasColumnType("time");
            entity.Property(e => e.weekday).HasComment("星期幾，1=星期一, 2=星期二, 3=星期三, ...");

            entity.HasOne(d => d.courseData).WithMany(p => p.courseSchedule)
                .HasForeignKey(d => d.courseData_id)
                .HasConstraintName("courseschedule_ibfk_1");
        });

        modelBuilder.Entity<courseTeacher>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("課程授課老師資料表，儲存每門課程的授課老師"));

            entity.HasIndex(e => e.courseData_id, "courseData_id");

            entity.Property(e => e.id).HasComment("課程授課老師ID，主鍵，自動遞增");
            entity.Property(e => e.courseData_id).HasComment("課程ID，參照課程資料表的ID");
            entity.Property(e => e.teacher_name)
                .HasMaxLength(100)
                .HasComment("老師的名字，不可為空");

            entity.HasOne(d => d.courseData).WithMany(p => p.courseTeacher)
                .HasForeignKey(d => d.courseData_id)
                .HasConstraintName("courseteacher_ibfk_1");
        });

        modelBuilder.Entity<creditCertification>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("學分認證資料表，紀錄學員的學分認列情況"));

            entity.HasIndex(e => e.course_id, "course_id");

            entity.HasIndex(e => e.student_id, "student_id");

            entity.Property(e => e.id).HasComment("學分認證ID，主鍵，自動遞增");
            entity.Property(e => e.application_status).HasComment("申請狀態（0=待審核, 1=已審核, 2=已拒絕等）");
            entity.Property(e => e.certificate_number)
                .HasMaxLength(255)
                .HasComment("證書編號");
            entity.Property(e => e.course_id).HasComment("課程ID，外鍵參照課程資料表");
            entity.Property(e => e.credits).HasComment("學分");
            entity.Property(e => e.student_id).HasComment("學員ID，外鍵參照學員資料表");
            entity.Property(e => e.training_hours).HasComment("訓練時數");
            entity.Property(e => e.training_unit)
                .HasMaxLength(255)
                .HasComment("訓練單位");

            entity.HasOne(d => d.course).WithMany(p => p.creditCertification)
                .HasForeignKey(d => d.course_id)
                .HasConstraintName("creditcertification_ibfk_2");

            entity.HasOne(d => d.student).WithMany(p => p.creditCertification)
                .HasForeignKey(d => d.student_id)
                .HasConstraintName("creditcertification_ibfk_1");
        });

        modelBuilder.Entity<creditCertificationFiles>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("學分認證附件資料表，儲存與學分認證相關的檔案"));

            entity.HasIndex(e => e.creditCertification_id, "creditCertification_id");

            entity.Property(e => e.id).HasComment("附件ID，主鍵，自動遞增");
            entity.Property(e => e.creditCertification_id).HasComment("學分認證ID，外鍵參照學分認證資料表");
            entity.Property(e => e.file_name)
                .HasMaxLength(255)
                .HasComment("檔案名稱");

            entity.HasOne(d => d.creditCertification).WithMany(p => p.creditCertificationFiles)
                .HasForeignKey(d => d.creditCertification_id)
                .HasConstraintName("creditcertificationfiles_ibfk_1");
        });

        modelBuilder.Entity<department>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("部門資料表，儲存部門的基本資料"));

            entity.HasIndex(e => e.unit_id, "unit_id");

            entity.Property(e => e.id).HasComment("部門ID，主鍵，自動遞增");
            entity.Property(e => e.name)
                .HasMaxLength(255)
                .HasComment("部門名稱");
            entity.Property(e => e.unit_id).HasComment("單位ID，對應至單位資料表的ID");

            entity.HasOne(d => d.unit).WithMany(p => p.department)
                .HasForeignKey(d => d.unit_id)
                .HasConstraintName("department_ibfk_1");
        });

        modelBuilder.Entity<effectTracking>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("追蹤學員在不同機關單位的工作成效及表現"));

            entity.HasIndex(e => e.current_agency_id, "current_agency_id");

            entity.HasIndex(e => e.previous_agency_id, "previous_agency_id");

            entity.HasIndex(e => e.student_id, "student_id");

            entity.Property(e => e.id).HasComment("追蹤ID，主鍵，自動遞增");
            entity.Property(e => e.achievement_notes)
                .HasMaxLength(255)
                .HasComment("實績備註");
            entity.Property(e => e.achievement_score).HasComment("實績分數");
            entity.Property(e => e.current_agency_id).HasComment("後單位機關ID，外鍵參照機關資料表");
            entity.Property(e => e.job_score).HasComment("實際從事工作分數");
            entity.Property(e => e.performance_score).HasComment("考績分數");
            entity.Property(e => e.plan_job_score).HasComment("規劃工作分數");
            entity.Property(e => e.previous_agency_id).HasComment("前單位機關ID，外鍵參照機關資料表");
            entity.Property(e => e.reward_score).HasComment("獎懲分數");
            entity.Property(e => e.student_id).HasComment("學員ID，外鍵參照學員資料表");

            entity.HasOne(d => d.current_agency).WithMany(p => p.effectTrackingcurrent_agency)
                .HasForeignKey(d => d.current_agency_id)
                .HasConstraintName("effecttracking_ibfk_3");

            entity.HasOne(d => d.previous_agency).WithMany(p => p.effectTrackingprevious_agency)
                .HasForeignKey(d => d.previous_agency_id)
                .HasConstraintName("effecttracking_ibfk_2");

            entity.HasOne(d => d.student).WithMany(p => p.effectTracking)
                .HasForeignKey(d => d.student_id)
                .HasConstraintName("effecttracking_ibfk_1");
        });

        modelBuilder.Entity<jobCategory>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.Property(e => e.id).HasComment("職系唯一識別碼，並且自動遞增");
            entity.Property(e => e.name)
                .HasMaxLength(50)
                .HasComment("職系名稱，最大長度為 50 字元，且不可為 NULL");
        });

        modelBuilder.Entity<jobTitle>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("職位資料表，儲存職位的基本資料"));

            entity.Property(e => e.id).HasComment("職位ID，主鍵，自動遞增");
            entity.Property(e => e.name)
                .HasMaxLength(255)
                .HasComment("職位名稱");
        });

        modelBuilder.Entity<learningHistory>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("學習歷程資料表，儲存學員的課程學習成績及相關資料"));

            entity.HasIndex(e => e.courseData_id, "courseData_id");

            entity.HasIndex(e => e.student_id, "student_id");

            entity.Property(e => e.id).HasComment("歷程ID，主鍵，自動遞增");
            entity.Property(e => e.certificate_number)
                .HasMaxLength(100)
                .HasComment("證書編號");
            entity.Property(e => e.courseData_id).HasComment("課程ID，參照課程資料表的ID");
            entity.Property(e => e.grade).HasComment("成績，整數型態");
            entity.Property(e => e.missed_hours).HasComment("缺課時數，記錄學員缺席的課程時數");
            entity.Property(e => e.receipt_number)
                .HasMaxLength(100)
                .HasComment("收據編號");
            entity.Property(e => e.remarks)
                .HasMaxLength(255)
                .HasComment("備註，學員的額外資訊或補充說明");
            entity.Property(e => e.student_id).HasComment("學員ID，參照學員資料表的ID");
            entity.Property(e => e.subsidy_status).HasComment("補助狀態，1=已補助，2=未補助，3=其他");
            entity.Property(e => e.training_result).HasComment("訓練結果，1=合格，2=不合格，3=其他，4=已退出");

            entity.HasOne(d => d.courseData).WithMany(p => p.learningHistory)
                .HasForeignKey(d => d.courseData_id)
                .HasConstraintName("learninghistory_ibfk_1");

            entity.HasOne(d => d.student).WithMany(p => p.learningHistory)
                .HasForeignKey(d => d.student_id)
                .HasConstraintName("learninghistory_ibfk_2");
        });

        modelBuilder.Entity<questionnaire>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("問卷資料表，儲存每份問卷的基本資訊"));

            entity.HasIndex(e => e.course_id, "course_id");

            entity.HasIndex(e => e.questionnaireCategory_id, "questionnaireCategory_id");

            entity.Property(e => e.id).HasComment("問卷ID，主鍵，自動遞增");
            entity.Property(e => e.course_id).HasComment("課程ID，對應至課程資料表的ID");
            entity.Property(e => e.name)
                .HasMaxLength(255)
                .HasComment("問卷名稱");
            entity.Property(e => e.questionnaireCategory_id).HasComment("問卷類別ID，對應至問卷類別資料表的ID");

            entity.HasOne(d => d.course).WithMany(p => p.questionnaire)
                .HasForeignKey(d => d.course_id)
                .HasConstraintName("questionnaire_ibfk_1");

            entity.HasOne(d => d.questionnaireCategory).WithMany(p => p.questionnaire)
                .HasForeignKey(d => d.questionnaireCategory_id)
                .HasConstraintName("questionnaire_ibfk_2");
        });

        modelBuilder.Entity<questionnaireCategory>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("問卷類別資料表，儲存問卷的不同類別資訊"));

            entity.Property(e => e.id).HasComment("類別ID，主鍵，自動遞增");
            entity.Property(e => e.name)
                .HasMaxLength(100)
                .HasComment("類別名稱");
        });

        modelBuilder.Entity<questionnaireHistory>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("學員問卷紀錄資料表，紀錄學員回答的分數和相關的問卷"));

            entity.HasIndex(e => e.questionnaire_id, "questionnaire_id");

            entity.HasIndex(e => e.student_id, "student_id");

            entity.Property(e => e.id).HasComment("紀錄ID，主鍵，自動遞增");
            entity.Property(e => e.questionnaire_id).HasComment("問卷ID，對應至問卷資料表的ID");
            entity.Property(e => e.score).HasComment("學員回答的分數");
            entity.Property(e => e.student_id).HasComment("學員ID，對應至學員資料表的ID");

            entity.HasOne(d => d.questionnaire).WithMany(p => p.questionnaireHistory)
                .HasForeignKey(d => d.questionnaire_id)
                .HasConstraintName("questionnairehistory_ibfk_2");

            entity.HasOne(d => d.student).WithMany(p => p.questionnaireHistory)
                .HasForeignKey(d => d.student_id)
                .HasConstraintName("questionnairehistory_ibfk_1");
        });

        modelBuilder.Entity<questionnaireQuestion>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("問卷問題資料表，儲存每份問卷中的問題"));

            entity.HasIndex(e => e.questionnaire_id, "questionnaire_id");

            entity.Property(e => e.id).HasComment("問題ID，主鍵，自動遞增");
            entity.Property(e => e.question)
                .HasMaxLength(255)
                .HasComment("問題內容");
            entity.Property(e => e.questionnaire_id).HasComment("問卷ID，對應至問卷資料表的ID");

            entity.HasOne(d => d.questionnaire).WithMany(p => p.questionnaireQuestion)
                .HasForeignKey(d => d.questionnaire_id)
                .HasConstraintName("questionnairequestion_ibfk_1");
        });

        modelBuilder.Entity<review>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("審核資料表，儲存每個學校的課程申請審核信息"));

            entity.HasIndex(e => e.school_id, "school_id");

            entity.Property(e => e.id).HasComment("審核ID，主鍵，自動遞增");
            entity.Property(e => e.application_type).HasComment("申請類型，1=新課程申請，2=續期申請，3=其他申請");
            entity.Property(e => e.approved_time)
                .HasComment("通過時間")
                .HasColumnType("datetime");
            entity.Property(e => e.contact_email)
                .HasMaxLength(100)
                .HasComment("聯絡人信箱");
            entity.Property(e => e.contact_name)
                .HasMaxLength(100)
                .HasComment("聯絡人姓名");
            entity.Property(e => e.contact_phone)
                .HasMaxLength(20)
                .HasComment("聯絡人電話");
            entity.Property(e => e.environment_description)
                .HasMaxLength(1000)
                .HasComment("環境設備說明");
            entity.Property(e => e.environment_score).HasComment("環境設備分數");
            entity.Property(e => e.execution_description)
                .HasMaxLength(1000)
                .HasComment("訓練執行說明");
            entity.Property(e => e.execution_score).HasComment("訓練執行分數");
            entity.Property(e => e.fax)
                .HasMaxLength(20)
                .HasComment("傳真號碼");
            entity.Property(e => e.first_review_date)
                .HasComment("初審時間")
                .HasColumnType("datetime");
            entity.Property(e => e.first_review_result).HasComment("初審結果，1=通過，2=未通過");
            entity.Property(e => e.location)
                .HasMaxLength(255)
                .HasComment("開課地點");
            entity.Property(e => e.notes)
                .HasMaxLength(1000)
                .HasComment("備註");
            entity.Property(e => e.participation_description)
                .HasMaxLength(1000)
                .HasComment("學生參與度說明");
            entity.Property(e => e.participation_score).HasComment("學生參與度分數");
            entity.Property(e => e.school_id).HasComment("學校ID，參照學校資料表的ID");
            entity.Property(e => e.second_review_date)
                .HasComment("複審時間")
                .HasColumnType("datetime");
            entity.Property(e => e.second_review_result).HasComment("複審結果，1=通過，2=未通過");
            entity.Property(e => e.sent_time)
                .HasComment("寄送時間")
                .HasColumnType("datetime");

            entity.HasOne(d => d.school).WithMany(p => p.review)
                .HasForeignKey(d => d.school_id)
                .HasConstraintName("review_ibfk_1");
        });

        modelBuilder.Entity<reviewFile>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("審核檔案資料表，儲存每個審核的附件檔案資料"));

            entity.HasIndex(e => e.review_id, "review_id");

            entity.Property(e => e.id).HasComment("附件ID，主鍵，自動遞增");
            entity.Property(e => e.name)
                .HasMaxLength(255)
                .HasComment("檔案名稱");
            entity.Property(e => e.review_id).HasComment("審核ID，參照審核資料表的ID");
            entity.Property(e => e.url)
                .HasMaxLength(255)
                .HasComment("檔案網址");

            entity.HasOne(d => d.review).WithMany(p => p.reviewFile)
                .HasForeignKey(d => d.review_id)
                .HasConstraintName("reviewfile_ibfk_1");
        });

        modelBuilder.Entity<roles>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("角色資料表，儲存系統中的角色及其相對應的權限"));

            entity.Property(e => e.id).HasComment("角色ID，主鍵，自動遞增");
            entity.Property(e => e.consultation_service).HasComment("諮詢服務權限");
            entity.Property(e => e.consultation_service_read).HasComment("諮詢服務是否可查看");
            entity.Property(e => e.consultation_service_write).HasComment("諮詢服務是否可操作");
            entity.Property(e => e.course_management).HasComment("課程管理權限");
            entity.Property(e => e.course_management_read).HasComment("課程管理是否可查看");
            entity.Property(e => e.course_management_write).HasComment("課程管理是否可操作");
            entity.Property(e => e.name)
                .HasMaxLength(30)
                .HasComment("角色名稱");
            entity.Property(e => e.performance_tracking).HasComment("追蹤成效權限");
            entity.Property(e => e.performance_tracking_read).HasComment("追蹤成效是否可查看");
            entity.Property(e => e.performance_tracking_write).HasComment("追蹤成效是否可操作");
            entity.Property(e => e.review_management).HasComment("資格審核管理權限");
            entity.Property(e => e.review_management_final_review).HasComment("資格審核管理 - 複審權");
            entity.Property(e => e.review_management_first_review).HasComment("資格審核管理 - 初審權限");
            entity.Property(e => e.review_management_read).HasComment("資格審核管理是否可查看");
            entity.Property(e => e.review_management_write).HasComment("資格審核管理是否可操作");
            entity.Property(e => e.student_management).HasComment("學員管理權限");
            entity.Property(e => e.student_management_read).HasComment("學員管理是否可查看");
            entity.Property(e => e.student_management_write).HasComment("學員管理是否可操作");
            entity.Property(e => e.system_management).HasComment("系統管理權限");
            entity.Property(e => e.system_management_read).HasComment("系統管理是否可查看");
            entity.Property(e => e.system_management_write).HasComment("系統管理是否可操作");
            entity.Property(e => e.verification_operations).HasComment("核銷作業權限");
            entity.Property(e => e.verification_operations_read).HasComment("核銷作業是否可查看");
            entity.Property(e => e.verification_operations_write).HasComment("核銷作業是否可操作");
        });

        modelBuilder.Entity<school>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("學校資料表，儲存學校基本資訊，包括學校ID、編號、名稱、承辦單位、網址和區域"));

            entity.HasIndex(e => e.code, "code").IsUnique();

            entity.Property(e => e.id).HasComment("學校ID，主鍵，自動遞增");
            entity.Property(e => e.area).HasComment("區域，學校所屬區域：1 = 北部, 2 = 中部, 3 = 南部");
            entity.Property(e => e.code)
                .HasMaxLength(10)
                .HasComment("學校編號，唯一且不可為空");
            entity.Property(e => e.institution)
                .HasMaxLength(100)
                .HasComment("承辦單位，可為空");
            entity.Property(e => e.institution_url)
                .HasMaxLength(255)
                .HasComment("承辦單位網址，可為空");
            entity.Property(e => e.name)
                .HasMaxLength(100)
                .HasComment("學校名稱，不可為空");
        });

        modelBuilder.Entity<student>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("學員資料表，儲存學員的基本資訊"));

            entity.HasIndex(e => e.agency_id, "agency_id");

            entity.HasIndex(e => e.department_id, "department_id");

            entity.HasIndex(e => e.jobCategory_id, "jobCategory_id");

            entity.HasIndex(e => e.jobTitle_id, "jobTitle_id");

            entity.HasIndex(e => e.unit_id, "unit_id");

            entity.Property(e => e.id).HasComment("學員ID，主鍵，自動遞增");
            entity.Property(e => e.address)
                .HasMaxLength(255)
                .HasComment("詳細地址");
            entity.Property(e => e.agency_id).HasComment("機關ID，對應至機關資料表的ID");
            entity.Property(e => e.application_year).HasComment("申請年度");
            entity.Property(e => e.bank_account)
                .HasMaxLength(30)
                .HasComment("銀行帳號");
            entity.Property(e => e.bank_code)
                .HasMaxLength(10)
                .HasComment("銀行代號");
            entity.Property(e => e.birthday)
                .HasComment("生日")
                .HasColumnType("datetime");
            entity.Property(e => e.branch_code)
                .HasMaxLength(10)
                .HasComment("分行代號");
            entity.Property(e => e.city)
                .HasMaxLength(50)
                .HasComment("縣市");
            entity.Property(e => e.class_required_credits).HasComment("學分班必修學分數");
            entity.Property(e => e.code)
                .HasMaxLength(50)
                .HasComment("學員學號，唯一");
            entity.Property(e => e.cybersec_required_credits).HasComment("資安署必修學分數");
            entity.Property(e => e.department_id).HasComment("部門ID，對應至部門資料表的ID");
            entity.Property(e => e.district)
                .HasMaxLength(50)
                .HasComment("地區，改為 district");
            entity.Property(e => e.education)
                .HasMaxLength(50)
                .HasComment("學歷");
            entity.Property(e => e.email)
                .HasMaxLength(100)
                .HasComment("信箱");
            entity.Property(e => e.gender).HasComment("性別，1=男，2=女，3=其他");
            entity.Property(e => e.gov_email)
                .HasMaxLength(50)
                .HasComment("公務電子信箱");
            entity.Property(e => e.graduate_school)
                .HasMaxLength(255)
                .HasComment("畢業學校");
            entity.Property(e => e.id_number)
                .HasMaxLength(20)
                .HasComment("身分證字號");
            entity.Property(e => e.jobCategory_id).HasComment("職系ID，對應至職系資料表的ID");
            entity.Property(e => e.jobTitle_id).HasComment("職位ID，對應至職位資料表的ID");
            entity.Property(e => e.name)
                .HasMaxLength(100)
                .HasComment("姓名");
            entity.Property(e => e.phone)
                .HasMaxLength(20)
                .HasComment("手機");
            entity.Property(e => e.registration_date)
                .HasComment("報名日期")
                .HasColumnType("datetime");
            entity.Property(e => e.registration_method).HasComment("報名方式，1=自行報名，2=機關薦派");
            entity.Property(e => e.remarks)
                .HasMaxLength(255)
                .HasComment("備註");
            entity.Property(e => e.required_credits).HasComment("必修學分數");
            entity.Property(e => e.tel)
                .HasMaxLength(50)
                .HasComment("市話");
            entity.Property(e => e.unit_id).HasComment("單位ID，對應至單位資料表的ID");

            entity.HasOne(d => d.agency).WithMany(p => p.student)
                .HasForeignKey(d => d.agency_id)
                .HasConstraintName("student_ibfk_1");

            entity.HasOne(d => d.department).WithMany(p => p.student)
                .HasForeignKey(d => d.department_id)
                .HasConstraintName("student_ibfk_3");

            entity.HasOne(d => d.jobCategory).WithMany(p => p.student)
                .HasForeignKey(d => d.jobCategory_id)
                .HasConstraintName("student_ibfk_5");

            entity.HasOne(d => d.jobTitle).WithMany(p => p.student)
                .HasForeignKey(d => d.jobTitle_id)
                .HasConstraintName("student_ibfk_4");

            entity.HasOne(d => d.unit).WithMany(p => p.student)
                .HasForeignKey(d => d.unit_id)
                .HasConstraintName("student_ibfk_2");
        });

        modelBuilder.Entity<studentContactStatus>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("學生每日連絡狀況表，紀錄每次與學員的聯絡狀況"));

            entity.HasIndex(e => e.student_id, "student_id");

            entity.Property(e => e.id).HasComment("紀錄ID，主鍵，自動遞增");
            entity.Property(e => e.contact_status)
                .HasMaxLength(255)
                .HasComment("聯絡情況");
            entity.Property(e => e.contact_time)
                .HasComment("聯絡時間")
                .HasColumnType("datetime");
            entity.Property(e => e.student_id).HasComment("學員ID，對應至學員資料表的ID");

            entity.HasOne(d => d.student).WithMany(p => p.studentContactStatus)
                .HasForeignKey(d => d.student_id)
                .HasConstraintName("studentcontactstatus_ibfk_1");
        });

        modelBuilder.Entity<studentStatusLog>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("學生狀況記錄表，記錄學生的狀態變更歷史"));

            entity.HasIndex(e => e.student_id, "student_id");

            entity.Property(e => e.id).HasComment("記錄ID，主鍵，自動遞增");
            entity.Property(e => e.cancel_reason)
                .HasMaxLength(255)
                .HasComment("取消原因，若狀態為取消時填寫");
            entity.Property(e => e.status).HasComment("學員狀態，1=已報名，2=已取消，3=進入培訓中，4=其他");
            entity.Property(e => e.status_time)
                .HasComment("狀態變更時間")
                .HasColumnType("datetime");
            entity.Property(e => e.student_id).HasComment("學員ID，對應至學員資料表的ID");

            entity.HasOne(d => d.student).WithMany(p => p.studentStatusLog)
                .HasForeignKey(d => d.student_id)
                .HasConstraintName("studentstatuslog_ibfk_1");
        });

        modelBuilder.Entity<tempCourseCreditFee>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("暫存課程編號與學分費資料表"));

            entity.Property(e => e.id).HasComment("流水號主鍵");
            entity.Property(e => e.course_code)
                .HasMaxLength(50)
                .HasComment("課程編號");
            entity.Property(e => e.credit_fee).HasComment("學分費");
        });

        modelBuilder.Entity<tempFutureCourses>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("暫存未來開課資料表，包含開課時間及結業時間，並記錄星期幾和上課時段"));

            entity.Property(e => e.id).HasComment("項次，流水號主鍵");
            entity.Property(e => e.course_code)
                .HasMaxLength(50)
                .HasComment("課程編號");
            entity.Property(e => e.course_name)
                .HasMaxLength(255)
                .HasComment("課程名稱");
            entity.Property(e => e.credits).HasComment("學分數");
            entity.Property(e => e.end_date)
                .HasComment("結業日期")
                .HasColumnType("datetime");
            entity.Property(e => e.school)
                .HasMaxLength(100)
                .HasComment("學校名稱");
            entity.Property(e => e.start_date)
                .HasComment("開課日期")
                .HasColumnType("datetime");
            entity.Property(e => e.teaching_method)
                .HasMaxLength(100)
                .HasComment("授課方式");
            entity.Property(e => e.time_slot)
                .HasMaxLength(100)
                .HasComment("上課時段");
            entity.Property(e => e.week_day)
                .HasMaxLength(20)
                .HasComment("星期幾");
        });

        modelBuilder.Entity<tempLearningHistory>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("暫存學習歷程表格，用於儲存學生的學習歷程資料。"));

            entity.Property(e => e.id).HasComment("唯一識別資料的主鍵");
            entity.Property(e => e.course_id)
                .HasMaxLength(20)
                .HasComment("課程的編號");
            entity.Property(e => e.course_mode)
                .HasMaxLength(50)
                .HasComment("課程的方式，例如線上、實體、混合等");
            entity.Property(e => e.course_name)
                .HasMaxLength(200)
                .HasComment("課程的名稱");
            entity.Property(e => e.credits).HasComment("該課程的學分數");
            entity.Property(e => e.end_date)
                .HasComment("課程的結業日期")
                .HasColumnType("datetime");
            entity.Property(e => e.full_name)
                .HasMaxLength(100)
                .HasComment("學生的姓名");
            entity.Property(e => e.original_end_date)
                .HasComment("原結業日期")
                .HasColumnType("datetime");
            entity.Property(e => e.original_start_date)
                .HasComment("原開課日期")
                .HasColumnType("datetime");
            entity.Property(e => e.remark)
                .HasMaxLength(100)
                .HasComment("備註");
            entity.Property(e => e.school_name)
                .HasMaxLength(200)
                .HasComment("開設課程的學校名稱");
            entity.Property(e => e.start_date)
                .HasComment("課程的開始日期")
                .HasColumnType("datetime");
            entity.Property(e => e.student_id)
                .HasMaxLength(20)
                .HasComment("學生的學號");
        });

        modelBuilder.Entity<tempNonProjectRegistrationData>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("非本計畫的報名資料"));

            entity.Property(e => e.id).HasComment("報名資料ID，主鍵，自動遞增");
            entity.Property(e => e.agency_code)
                .HasMaxLength(20)
                .HasComment("機關編號");
            entity.Property(e => e.agency_name)
                .HasMaxLength(100)
                .HasComment("機關名稱");
            entity.Property(e => e.application_year)
                .HasMaxLength(10)
                .HasComment("申請年度");
            entity.Property(e => e.department)
                .HasMaxLength(100)
                .HasComment("部門");
            entity.Property(e => e.full_name)
                .HasMaxLength(100)
                .HasComment("姓名");
            entity.Property(e => e.id_card_number)
                .HasMaxLength(20)
                .HasComment("身分證字號");
            entity.Property(e => e.job_title)
                .HasMaxLength(50)
                .HasComment("職稱");
            entity.Property(e => e.mobile_phone)
                .HasMaxLength(20)
                .HasComment("手機");
            entity.Property(e => e.registration_date)
                .HasComment("報名日期")
                .HasColumnType("datetime");
            entity.Property(e => e.student_id)
                .HasMaxLength(20)
                .HasComment("學號");
            entity.Property(e => e.subsidy_category)
                .HasMaxLength(50)
                .HasComment("補助類別");
            entity.Property(e => e.unit_name)
                .HasMaxLength(100)
                .HasComment("單位名稱");
        });

        modelBuilder.Entity<tempRegistration>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("報名資料表，儲存報名相關資料"));

            entity.Property(e => e.id).HasComment("報名資料ID，主鍵，自動遞增");
            entity.Property(e => e.agency_code)
                .HasMaxLength(50)
                .HasComment("機關編號");
            entity.Property(e => e.agency_name)
                .HasMaxLength(255)
                .HasComment("機關名稱");
            entity.Property(e => e.agency_region)
                .HasMaxLength(255)
                .HasComment("機關區域");
            entity.Property(e => e.application_year)
                .HasMaxLength(10)
                .HasComment("申請年度");
            entity.Property(e => e.cancel_date)
                .HasComment("取消日期")
                .HasColumnType("datetime");
            entity.Property(e => e.cancel_reason)
                .HasMaxLength(255)
                .HasComment("取消原因 (請寫結論)");
            entity.Property(e => e.completed_course_1)
                .HasMaxLength(255)
                .HasComment("學分班 (文化114.02.15人工智慧)");
            entity.Property(e => e.completed_course_2)
                .HasMaxLength(255)
                .HasComment("學分班 (文化114.02.15資通安全防護)");
            entity.Property(e => e.completed_credit_courses)
                .HasMaxLength(10)
                .HasComment("學分班已修課程數 (空大114.02.18)");
            entity.Property(e => e.completed_credit_courses_2)
                .HasMaxLength(10)
                .HasComment("學分班已修課程數 (114.02.17含台科大)");
            entity.Property(e => e.completed_credit_courses_3)
                .HasMaxLength(10)
                .HasComment("學分班已修課程數 (114.03.03)");
            entity.Property(e => e.completed_credits)
                .HasMaxLength(10)
                .HasComment("學分班已修學分數");
            entity.Property(e => e.completed_security_training_courses)
                .HasMaxLength(10)
                .HasComment("資安職能訓練已修課程數");
            entity.Property(e => e.completed_security_training_credits)
                .HasMaxLength(10)
                .HasComment("資安職能訓練已修學分數");
            entity.Property(e => e.course_category)
                .HasMaxLength(255)
                .HasComment("課程類別");
            entity.Property(e => e.current_job_series)
                .HasMaxLength(255)
                .HasComment("目前職系");
            entity.Property(e => e.daily_contact_status)
                .HasMaxLength(255)
                .HasComment("每日連絡狀況 (如114.02.20 電話未接等)");
            entity.Property(e => e.department)
                .HasMaxLength(255)
                .HasComment("部門");
            entity.Property(e => e.estimated_reimbursement)
                .HasMaxLength(255)
                .HasComment("學分班課程預估核銷費 (5月底前結業)(學分數x3,000元)x80%");
            entity.Property(e => e.estimated_subsidy)
                .HasMaxLength(10)
                .HasComment("預計總補助款");
            entity.Property(e => e.full_name)
                .HasMaxLength(255)
                .HasComment("姓名");
            entity.Property(e => e.gender)
                .HasMaxLength(10)
                .HasComment("性別");
            entity.Property(e => e.id_card_number)
                .HasMaxLength(20)
                .HasComment("身分證字號");
            entity.Property(e => e.job_title)
                .HasMaxLength(255)
                .HasComment("職稱");
            entity.Property(e => e.max_credits)
                .HasMaxLength(10)
                .HasComment("學分數 上限20學分");
            entity.Property(e => e.mobile_phone)
                .HasMaxLength(50)
                .HasComment("手機號碼");
            entity.Property(e => e.office_email)
                .HasMaxLength(255)
                .HasComment("公務電子郵件");
            entity.Property(e => e.office_phone)
                .HasMaxLength(50)
                .HasComment("公務聯絡電話");
            entity.Property(e => e.other_notes)
                .HasMaxLength(255)
                .HasComment("其他備註 (請寫結論，如調職等特殊情形)");
            entity.Property(e => e.pending_subsidy)
                .HasMaxLength(10)
                .HasComment("尚未補助費用");
            entity.Property(e => e.private_email)
                .HasMaxLength(255)
                .HasComment("私人電子郵件");
            entity.Property(e => e.registration_date)
                .HasComment("報名日期")
                .HasColumnType("datetime");
            entity.Property(e => e.remaining_credits)
                .HasMaxLength(10)
                .HasComment("學分班尚缺學分數");
            entity.Property(e => e.remaining_security_training_credits)
                .HasMaxLength(10)
                .HasComment("資安職能訓練尚缺學分數");
            entity.Property(e => e.remaining_total_credits)
                .HasMaxLength(10)
                .HasComment("尚缺總學分數");
            entity.Property(e => e.student_id)
                .HasMaxLength(50)
                .HasComment("學號");
            entity.Property(e => e.subsidy_category)
                .HasMaxLength(255)
                .HasComment("補助類別");
            entity.Property(e => e.total_courses)
                .HasMaxLength(10)
                .HasComment("累積總課程數");
            entity.Property(e => e.total_credits)
                .HasMaxLength(10)
                .HasComment("累積總學分數");
            entity.Property(e => e.unit_name)
                .HasMaxLength(255)
                .HasComment("單位名稱");
        });

        modelBuilder.Entity<unit>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("單位資料表，儲存單位的基本資料"));

            entity.HasIndex(e => e.agency_id, "agency_id");

            entity.Property(e => e.id).HasComment("單位ID，主鍵，自動遞增");
            entity.Property(e => e.agency_id).HasComment("機關ID，對應至機關資料表的ID");
            entity.Property(e => e.name)
                .HasMaxLength(255)
                .HasComment("單位名稱");

            entity.HasOne(d => d.agency).WithMany(p => p.unit)
                .HasForeignKey(d => d.agency_id)
                .HasConstraintName("unit_ibfk_1");
        });

        modelBuilder.Entity<users>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("系統使用者資料表，儲存使用者基本資料"));

            entity.HasIndex(e => e.account, "account").IsUnique();

            entity.HasIndex(e => e.role_id, "role_id");

            entity.Property(e => e.id).HasComment("使用者ID，主鍵，自動遞增");
            entity.Property(e => e.account)
                .HasMaxLength(100)
                .HasComment("使用者帳號，唯一");
            entity.Property(e => e.is_enabled).HasComment("使用者是否啟用 (0: 禁用, 1: 啟用)");
            entity.Property(e => e.login_time)
                .HasComment("使用者登入時間")
                .HasColumnType("datetime");
            entity.Property(e => e.logout_time)
                .HasComment("使用者登出時間")
                .HasColumnType("datetime");
            entity.Property(e => e.name)
                .HasMaxLength(255)
                .HasComment("使用者姓名");
            entity.Property(e => e.password)
                .HasMaxLength(255)
                .HasComment("使用者密碼");
            entity.Property(e => e.role_id).HasComment("角色ID，外鍵參照角色資料表");
            entity.Property(e => e.title)
                .HasMaxLength(255)
                .HasComment("使用者職位");
            entity.Property(e => e.unit)
                .HasMaxLength(255)
                .HasComment("使用者所屬單位");

            entity.HasOne(d => d.role).WithMany(p => p.users)
                .HasForeignKey(d => d.role_id)
                .HasConstraintName("users_ibfk_1");
        });

        modelBuilder.Entity<verification>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("核銷作業資料表，紀錄學員的核銷申請(有待討論)"));

            entity.HasIndex(e => e.learningHistory_id, "learningHistory_id");

            entity.Property(e => e.id).HasComment("核銷作業ID，主鍵，自動遞增");
            entity.Property(e => e.amount).HasComment("費用金額");
            entity.Property(e => e.application_date)
                .HasComment("申請日期")
                .HasColumnType("datetime");
            entity.Property(e => e.learningHistory_id).HasComment("學習歷程ID，外鍵參照學習歷程資料表");
            entity.Property(e => e.status).HasComment("狀態（0=待審核, 1=已核准, 2=已拒絕等）");

            entity.HasOne(d => d.learningHistory).WithMany(p => p.verification)
                .HasForeignKey(d => d.learningHistory_id)
                .HasConstraintName("verification_ibfk_1");
        });

        modelBuilder.Entity<visitContent>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("訪視內容資料表，儲存每次訪視的具體內容"));

            entity.HasIndex(e => e.visitHistory_id, "visitHistory_id");

            entity.Property(e => e.id).HasComment("訪視內容ID，主鍵，自動遞增");
            entity.Property(e => e.content)
                .HasMaxLength(255)
                .HasComment("訪視內容");
            entity.Property(e => e.visitHistory_id).HasComment("對應訪視紀錄ID，外鍵關聯");

            entity.HasOne(d => d.visitHistory).WithMany(p => p.visitContent)
                .HasForeignKey(d => d.visitHistory_id)
                .HasConstraintName("visitcontent_ibfk_1");
        });

        modelBuilder.Entity<visitFiles>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("訪視檔案資料表，儲存每次訪視的檔案"));

            entity.HasIndex(e => e.visitHistory_id, "visitHistory_id");

            entity.Property(e => e.id).HasComment("檔案ID，主鍵，自動遞增");
            entity.Property(e => e.file)
                .HasMaxLength(255)
                .HasComment("檔案名稱或路徑");
            entity.Property(e => e.visitHistory_id).HasComment("對應訪視紀錄ID，外鍵關聯");

            entity.HasOne(d => d.visitHistory).WithMany(p => p.visitFiles)
                .HasForeignKey(d => d.visitHistory_id)
                .HasConstraintName("visitfiles_ibfk_1");
        });

        modelBuilder.Entity<visitHistory>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable(tb => tb.HasComment("訪視紀錄資料表，儲存課程的訪視紀錄及附件"));

            entity.HasIndex(e => e.courseData_id, "courseData_id");

            entity.Property(e => e.id).HasComment("紀錄ID，主鍵，自動遞增");
            entity.Property(e => e.courseData_id).HasComment("課程資料ID，參照課程資料表");
            entity.Property(e => e.visit_time)
                .HasComment("當時訪視的時間")
                .HasColumnType("datetime");
            entity.Property(e => e.visitor)
                .HasMaxLength(10)
                .HasComment("當時訪視的人員");

            entity.HasOne(d => d.courseData).WithMany(p => p.visitHistory)
                .HasForeignKey(d => d.courseData_id)
                .HasConstraintName("visithistory_ibfk_1");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
