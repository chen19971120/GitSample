using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 儲存每個問題及答案的表格，並與問題類別相關聯
/// </summary>
public partial class consultationQuestion
{
    /// <summary>
    /// 問題ID，唯一
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 所屬的類別ID，指向諮詢類別表
    /// </summary>
    public int? category_id { get; set; }

    /// <summary>
    /// 問題內容
    /// </summary>
    public string? question { get; set; }

    /// <summary>
    /// 答案內容
    /// </summary>
    public string? answer { get; set; }

    /// <summary>
    /// 創建時間
    /// </summary>
    public DateTime? created_at { get; set; }

    /// <summary>
    /// 更新時間
    /// </summary>
    public DateTime? update_at { get; set; }

    public virtual consultationCategory? category { get; set; }
}
