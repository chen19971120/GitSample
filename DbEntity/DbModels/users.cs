using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 系統使用者資料表，儲存使用者基本資料
/// </summary>
public partial class users
{
    /// <summary>
    /// 使用者ID，主鍵，自動遞增
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 使用者姓名
    /// </summary>
    public string? name { get; set; }

    /// <summary>
    /// 角色ID，外鍵參照角色資料表
    /// </summary>
    public int? role_id { get; set; }

    /// <summary>
    /// 使用者帳號，唯一
    /// </summary>
    public string account { get; set; } = null!;

    /// <summary>
    /// 使用者密碼
    /// </summary>
    public string password { get; set; } = null!;

    /// <summary>
    /// 使用者所屬單位
    /// </summary>
    public string? unit { get; set; }

    /// <summary>
    /// 使用者職位
    /// </summary>
    public string? title { get; set; }

    /// <summary>
    /// 使用者登入時間
    /// </summary>
    public DateTime? login_time { get; set; }

    /// <summary>
    /// 使用者登出時間
    /// </summary>
    public DateTime? logout_time { get; set; }

    /// <summary>
    /// 使用者是否啟用 (0: 禁用, 1: 啟用)
    /// </summary>
    public bool is_enabled { get; set; }

    public virtual roles? role { get; set; }
}
