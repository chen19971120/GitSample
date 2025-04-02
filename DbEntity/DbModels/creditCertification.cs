using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 學分認證資料表，紀錄學員的學分認列情況
/// </summary>
public partial class creditCertification
{
    /// <summary>
    /// 學分認證ID，主鍵，自動遞增
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 學員ID，外鍵參照學員資料表
    /// </summary>
    public int? student_id { get; set; }

    /// <summary>
    /// 課程ID，外鍵參照課程資料表
    /// </summary>
    public int? course_id { get; set; }

    /// <summary>
    /// 訓練單位
    /// </summary>
    public string? training_unit { get; set; }

    /// <summary>
    /// 學分
    /// </summary>
    public int? credits { get; set; }

    /// <summary>
    /// 證書編號
    /// </summary>
    public string? certificate_number { get; set; }

    /// <summary>
    /// 申請狀態（0=待審核, 1=已審核, 2=已拒絕等）
    /// </summary>
    public int? application_status { get; set; }

    /// <summary>
    /// 訓練時數
    /// </summary>
    public int? training_hours { get; set; }

    public virtual course? course { get; set; }

    public virtual ICollection<creditCertificationFiles> creditCertificationFiles { get; set; } = new List<creditCertificationFiles>();

    public virtual student? student { get; set; }
}
