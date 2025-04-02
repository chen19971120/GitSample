using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 角色資料表，儲存系統中的角色及其相對應的權限
/// </summary>
public partial class roles
{
    /// <summary>
    /// 角色ID，主鍵，自動遞增
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 角色名稱
    /// </summary>
    public string name { get; set; } = null!;

    /// <summary>
    /// 資格審核管理權限
    /// </summary>
    public bool review_management { get; set; }

    /// <summary>
    /// 資格審核管理是否可操作
    /// </summary>
    public bool review_management_write { get; set; }

    /// <summary>
    /// 資格審核管理是否可查看
    /// </summary>
    public bool review_management_read { get; set; }

    /// <summary>
    /// 資格審核管理 - 初審權限
    /// </summary>
    public bool review_management_first_review { get; set; }

    /// <summary>
    /// 資格審核管理 - 複審權
    /// </summary>
    public bool review_management_final_review { get; set; }

    /// <summary>
    /// 課程管理權限
    /// </summary>
    public bool course_management { get; set; }

    /// <summary>
    /// 課程管理是否可操作
    /// </summary>
    public bool course_management_write { get; set; }

    /// <summary>
    /// 課程管理是否可查看
    /// </summary>
    public bool course_management_read { get; set; }

    /// <summary>
    /// 學員管理權限
    /// </summary>
    public bool student_management { get; set; }

    /// <summary>
    /// 學員管理是否可操作
    /// </summary>
    public bool student_management_write { get; set; }

    /// <summary>
    /// 學員管理是否可查看
    /// </summary>
    public bool student_management_read { get; set; }

    /// <summary>
    /// 核銷作業權限
    /// </summary>
    public bool verification_operations { get; set; }

    /// <summary>
    /// 核銷作業是否可操作
    /// </summary>
    public bool verification_operations_write { get; set; }

    /// <summary>
    /// 核銷作業是否可查看
    /// </summary>
    public bool verification_operations_read { get; set; }

    /// <summary>
    /// 追蹤成效權限
    /// </summary>
    public bool performance_tracking { get; set; }

    /// <summary>
    /// 追蹤成效是否可操作
    /// </summary>
    public bool performance_tracking_write { get; set; }

    /// <summary>
    /// 追蹤成效是否可查看
    /// </summary>
    public bool performance_tracking_read { get; set; }

    /// <summary>
    /// 諮詢服務權限
    /// </summary>
    public bool consultation_service { get; set; }

    /// <summary>
    /// 諮詢服務是否可操作
    /// </summary>
    public bool consultation_service_write { get; set; }

    /// <summary>
    /// 諮詢服務是否可查看
    /// </summary>
    public bool consultation_service_read { get; set; }

    /// <summary>
    /// 系統管理權限
    /// </summary>
    public bool system_management { get; set; }

    /// <summary>
    /// 系統管理是否可操作
    /// </summary>
    public bool system_management_write { get; set; }

    /// <summary>
    /// 系統管理是否可查看
    /// </summary>
    public bool system_management_read { get; set; }

    public virtual ICollection<users> users { get; set; } = new List<users>();
}
