using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 學員資料表，儲存學員的基本資訊
/// </summary>
public partial class student
{
    /// <summary>
    /// 學員ID，主鍵，自動遞增
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 學員學號，唯一
    /// </summary>
    public string? code { get; set; }

    /// <summary>
    /// 姓名
    /// </summary>
    public string? name { get; set; }

    /// <summary>
    /// 性別，1=男，2=女，3=其他
    /// </summary>
    public int? gender { get; set; }

    /// <summary>
    /// 身分證字號
    /// </summary>
    public string? id_number { get; set; }

    /// <summary>
    /// 生日
    /// </summary>
    public DateTime? birthday { get; set; }

    /// <summary>
    /// 學歷
    /// </summary>
    public string? education { get; set; }

    /// <summary>
    /// 畢業學校
    /// </summary>
    public string? graduate_school { get; set; }

    /// <summary>
    /// 手機
    /// </summary>
    public string? phone { get; set; }

    /// <summary>
    /// 市話
    /// </summary>
    public string? tel { get; set; }

    /// <summary>
    /// 信箱
    /// </summary>
    public string? email { get; set; }

    /// <summary>
    /// 縣市
    /// </summary>
    public string? city { get; set; }

    /// <summary>
    /// 地區，改為 district
    /// </summary>
    public string? district { get; set; }

    /// <summary>
    /// 詳細地址
    /// </summary>
    public string? address { get; set; }

    /// <summary>
    /// 銀行代號
    /// </summary>
    public string? bank_code { get; set; }

    /// <summary>
    /// 分行代號
    /// </summary>
    public string? branch_code { get; set; }

    /// <summary>
    /// 銀行帳號
    /// </summary>
    public string? bank_account { get; set; }

    /// <summary>
    /// 報名方式，1=自行報名，2=機關薦派
    /// </summary>
    public int? registration_method { get; set; }

    /// <summary>
    /// 機關ID，對應至機關資料表的ID
    /// </summary>
    public int? agency_id { get; set; }

    /// <summary>
    /// 單位ID，對應至單位資料表的ID
    /// </summary>
    public int? unit_id { get; set; }

    /// <summary>
    /// 部門ID，對應至部門資料表的ID
    /// </summary>
    public int? department_id { get; set; }

    /// <summary>
    /// 職位ID，對應至職位資料表的ID
    /// </summary>
    public int? jobTitle_id { get; set; }

    /// <summary>
    /// 職系ID，對應至職系資料表的ID
    /// </summary>
    public int? jobCategory_id { get; set; }

    /// <summary>
    /// 報名日期
    /// </summary>
    public DateTime? registration_date { get; set; }

    /// <summary>
    /// 申請年度
    /// </summary>
    public int? application_year { get; set; }

    /// <summary>
    /// 公務電子信箱
    /// </summary>
    public string? gov_email { get; set; }

    /// <summary>
    /// 備註
    /// </summary>
    public string? remarks { get; set; }

    /// <summary>
    /// 學分班必修學分數
    /// </summary>
    public int? class_required_credits { get; set; }

    /// <summary>
    /// 資安署必修學分數
    /// </summary>
    public int? cybersec_required_credits { get; set; }

    /// <summary>
    /// 必修學分數
    /// </summary>
    public int? required_credits { get; set; }

    public virtual agency? agency { get; set; }

    public virtual ICollection<creditCertification> creditCertification { get; set; } = new List<creditCertification>();

    public virtual department? department { get; set; }

    public virtual ICollection<effectTracking> effectTracking { get; set; } = new List<effectTracking>();

    public virtual jobCategory? jobCategory { get; set; }

    public virtual jobTitle? jobTitle { get; set; }

    public virtual ICollection<learningHistory> learningHistory { get; set; } = new List<learningHistory>();

    public virtual ICollection<questionnaireHistory> questionnaireHistory { get; set; } = new List<questionnaireHistory>();

    public virtual ICollection<studentContactStatus> studentContactStatus { get; set; } = new List<studentContactStatus>();

    public virtual ICollection<studentStatusLog> studentStatusLog { get; set; } = new List<studentStatusLog>();

    public virtual unit? unit { get; set; }
}
