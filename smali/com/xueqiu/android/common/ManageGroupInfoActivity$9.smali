.class final Lcom/xueqiu/android/common/ManageGroupInfoActivity$9;
.super Lcom/xueqiu/android/base/b/p;
.source "ManageGroupInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/ManageGroupInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/common/model/SNBJSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/ManageGroupInfoActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$9;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$9;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->e(Lcom/xueqiu/android/common/ManageGroupInfoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 429
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 430
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 12

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 425
    check-cast p1, Lcom/xueqiu/android/common/model/SNBJSONObject;

    .line 1434
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$9;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->e(Lcom/xueqiu/android/common/ManageGroupInfoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1436
    const/4 v1, 0x0

    .line 1438
    :try_start_0
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/SNBJSONObject;->keys()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v2, v1

    move v1, v3

    .line 1439
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1440
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1441
    invoke-virtual {p1, v0}, Lcom/xueqiu/android/common/model/SNBJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1443
    iget-object v6, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$9;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    invoke-static {v6}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->a(Lcom/xueqiu/android/common/ManageGroupInfoActivity;)I

    move-result v6

    if-ne v4, v6, :cond_7

    .line 1444
    if-eqz v0, :cond_0

    .line 1445
    const-string v6, "name"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1446
    const-string v7, "/friendships/groups/create_batch"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1447
    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 1448
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 1449
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    move v1, v3

    .line 1450
    :goto_1
    if-ge v1, v7, :cond_3

    .line 1451
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 1452
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$9;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->d(Lcom/xueqiu/android/common/ManageGroupInfoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;

    .line 1453
    const-string v10, "name"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1454
    iget-object v11, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mName:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1455
    const-string v9, "id"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mId:J

    .line 1456
    const-string v9, "orderId"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mOrderId:I

    .line 1457
    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mIsAdd:Z

    .line 1450
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v4

    .line 1463
    goto :goto_0

    :cond_4
    move v1, v3

    .line 1466
    goto :goto_0

    :cond_5
    const-string v7, "/friendships/groups/destroy"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1467
    iget-object v1, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$9;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    invoke-static {v1, v0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->a(Lcom/xueqiu/android/common/ManageGroupInfoActivity;Lorg/json/JSONObject;)Z

    move-result v1

    goto/16 :goto_0

    .line 1468
    :cond_6
    const-string v7, "/friendships/groups/update"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 1469
    iget-object v1, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$9;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    invoke-static {v1, v0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->b(Lcom/xueqiu/android/common/ManageGroupInfoActivity;Lorg/json/JSONObject;)Z

    move-result v0

    :goto_2
    move v1, v0

    .line 1471
    goto/16 :goto_0

    .line 1473
    :cond_7
    if-eqz v0, :cond_0

    .line 1474
    const-string v6, "name"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1475
    const-string v7, "/stock/portfolio/create"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1476
    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1477
    const-string v1, "portfolio"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1478
    const-string v1, "portfolio"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1479
    if-eqz v1, :cond_a

    .line 1480
    const-string v0, "name"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1481
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$9;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->d(Lcom/xueqiu/android/common/ManageGroupInfoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;

    .line 1482
    iget-object v8, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mName:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1483
    const-string v6, "id"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mId:J

    .line 1484
    const-string v6, "orderId"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mOrderId:I

    .line 1485
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mIsAdd:Z

    :cond_9
    move v1, v4

    .line 1490
    goto/16 :goto_0

    .line 1492
    :cond_a
    const-string v1, "error_description"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move v1, v4

    .line 1494
    goto/16 :goto_0

    :cond_b
    const-string v1, "portfolios"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1495
    const-string v1, "portfolios"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 1496
    if-eqz v6, :cond_e

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_e

    .line 1497
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    move v1, v3

    .line 1498
    :goto_3
    if-ge v1, v7, :cond_e

    .line 1499
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 1500
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$9;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->d(Lcom/xueqiu/android/common/ManageGroupInfoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;

    .line 1501
    const-string v10, "name"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1502
    iget-object v11, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mName:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1503
    const-string v9, "id"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mId:J

    .line 1504
    const-string v9, "orderId"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mOrderId:I

    .line 1505
    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mIsAdd:Z

    .line 1498
    :cond_d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_e
    move v1, v4

    .line 1512
    goto/16 :goto_0

    .line 1514
    :cond_f
    const-string v1, "error_description"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move v1, v3

    .line 1516
    goto/16 :goto_0

    :cond_10
    const-string v7, "/stock/portfolio/remove"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1517
    iget-object v1, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$9;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    invoke-static {v1, v0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->a(Lcom/xueqiu/android/common/ManageGroupInfoActivity;Lorg/json/JSONObject;)Z

    move-result v1

    goto/16 :goto_0

    .line 1518
    :cond_11
    const-string v7, "/stock/portfolio/modify"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1519
    iget-object v1, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$9;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    invoke-static {v1, v0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->b(Lcom/xueqiu/android/common/ManageGroupInfoActivity;Lorg/json/JSONObject;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    goto/16 :goto_0

    :cond_12
    move-object v0, v2

    .line 1538
    :goto_4
    if-eqz v1, :cond_14

    .line 1539
    const v0, 0x7f070251

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    .line 1540
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$9;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->f(Lcom/xueqiu/android/common/ManageGroupInfoActivity;)Z

    .line 1541
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xueqiu.android.action.refreshPortfolio"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1542
    const-string v1, "extra_portfolio_category"

    iget-object v2, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$9;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    invoke-static {v2}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->g(Lcom/xueqiu/android/common/ManageGroupInfoActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1543
    iget-object v1, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$9;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 1544
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$9;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->finish()V

    .line 1545
    :goto_5
    return-void

    .line 1525
    :catch_0
    move-exception v0

    .line 1528
    :goto_6
    :try_start_2
    invoke-static {p1}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->a(Lcom/xueqiu/android/common/model/SNBJSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 2197
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1529
    if-nez v2, :cond_13

    .line 1530
    invoke-static {v1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    move-object v0, v1

    move v1, v3

    goto :goto_4

    .line 1532
    :cond_13
    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    move v1, v3

    .line 1535
    goto :goto_4

    :catch_1
    move-exception v0

    move-object v0, v1

    move v1, v3

    goto :goto_4

    .line 1546
    :cond_14
    if-nez v0, :cond_15

    .line 1547
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$9;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070250

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1550
    :cond_15
    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_5

    .line 1525
    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :cond_16
    move v0, v1

    goto/16 :goto_2
.end method
