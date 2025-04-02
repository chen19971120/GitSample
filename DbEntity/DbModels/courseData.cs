using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 課程資料表，儲存各課程的詳細資料，包括課程代碼、名稱、開課日期、學分、費用等
/// </summary>
public partial class courseData
{
    /// <summary>
    /// 課程資料ID，主鍵，自動遞增
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 課程代碼，唯一且不可為空
    /// </summary>
    public string code { get; set; } = null!;

    /// <summary>
    /// 課程ID，參照課程資料表的ID
    /// </summary>
    public int? course_id { get; set; }

    /// <summary>
    /// 學校ID，參照學校資料表的ID
    /// </summary>
    public int? school_id { get; set; }

    /// <summary>
    /// 課程名稱，不可為空
    /// </summary>
    public string name { get; set; } = null!;

    /// <summary>
    /// 開課日期
    /// </summary>
    public DateTime? start_date { get; set; }

    /// <summary>
    /// 結業日期
    /// </summary>
    public DateTime? end_date { get; set; }

    /// <summary>
    /// 實際開課日期
    /// </summary>
    public DateTime? actual_start_date { get; set; }

    /// <summary>
    /// 實際結業日期
    /// </summary>
    public DateTime? actual_end_date { get; set; }

    /// <summary>
    /// 總時數
    /// </summary>
    public int? total_hours { get; set; }

    /// <summary>
    /// 學分數
    /// </summary>
    public int? credits { get; set; }

    /// <summary>
    /// 參加人數
    /// </summary>
    public int? participants_count { get; set; }

    /// <summary>
    /// 訓練人數
    /// </summary>
    public int? training_count { get; set; }

    /// <summary>
    /// 上課地點
    /// </summary>
    public string? location { get; set; }

    /// <summary>
    /// 課程狀態：1=開課中, 2=已結束, 3=已取消
    /// </summary>
    public int? course_status { get; set; }

    /// <summary>
    /// 課程內容
    /// </summary>
    public string? course_content { get; set; }

    /// <summary>
    /// 學費
    /// </summary>
    public int? tuition_fee { get; set; }

    /// <summary>
    /// 額外費用
    /// </summary>
    public int? extra_cost { get; set; }

    /// <summary>
    /// 是否有學費折扣優惠，1 = 有折扣，0 = 沒有折扣
    /// </summary>
    public bool? discount_available { get; set; }

    /// <summary>
    /// 上課方式，1=線上，2=實體，3=混合
    /// </summary>
    public int? course_mode { get; set; }

    /// <summary>
    /// 開課類型，1 = 資安職能訓練，2 = 學分班
    /// </summary>
    public int? course_type { get; set; }

    /// <summary>
    /// 課程滿意度
    /// </summary>
    public double? satisfaction_rating { get; set; }

    /// <summary>
    /// 授課老師名稱
    /// </summary>
    public string? teacher { get; set; }

    /// <summary>
    /// 聯絡人名稱
    /// </summary>
    public string? contact_name { get; set; }

    /// <summary>
    /// 聯絡人電話
    /// </summary>
    public string? contact_phone { get; set; }

    /// <summary>
    /// 備註欄
    /// </summary>
    public string? remark { get; set; }

    public virtual course? course { get; set; }

    public virtual ICollection<coursePlan> coursePlan { get; set; } = new List<coursePlan>();

    public virtual ICollection<courseSchedule> courseSchedule { get; set; } = new List<courseSchedule>();

    public virtual ICollection<courseTeacher> courseTeacher { get; set; } = new List<courseTeacher>();

    public virtual ICollection<learningHistory> learningHistory { get; set; } = new List<learningHistory>();

    public virtual ICollection<questionnaire> questionnaire { get; set; } = new List<questionnaire>();

    public virtual school? school { get; set; }

    public virtual ICollection<visitHistory> visitHistory { get; set; } = new List<visitHistory>();
}
