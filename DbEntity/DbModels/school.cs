using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 學校資料表，儲存學校基本資訊，包括學校ID、編號、名稱、承辦單位、網址和區域
/// </summary>
public partial class school
{
    /// <summary>
    /// 學校ID，主鍵，自動遞增
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 學校編號，唯一且不可為空
    /// </summary>
    public string code { get; set; } = null!;

    /// <summary>
    /// 學校名稱，不可為空
    /// </summary>
    public string name { get; set; } = null!;

    /// <summary>
    /// 承辦單位，可為空
    /// </summary>
    public string? institution { get; set; }

    /// <summary>
    /// 承辦單位網址，可為空
    /// </summary>
    public string? institution_url { get; set; }

    /// <summary>
    /// 區域，學校所屬區域：1 = 北部, 2 = 中部, 3 = 南部
    /// </summary>
    public int? area { get; set; }

    public virtual ICollection<courseData> courseData { get; set; } = new List<courseData>();

    public virtual ICollection<review> review { get; set; } = new List<review>();
}
