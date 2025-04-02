using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 學分認證附件資料表，儲存與學分認證相關的檔案
/// </summary>
public partial class creditCertificationFiles
{
    /// <summary>
    /// 附件ID，主鍵，自動遞增
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 學分認證ID，外鍵參照學分認證資料表
    /// </summary>
    public int? creditCertification_id { get; set; }

    /// <summary>
    /// 檔案名稱
    /// </summary>
    public string? file_name { get; set; }

    public virtual creditCertification? creditCertification { get; set; }
}
