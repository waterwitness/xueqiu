.class public final Lcom/xueqiu/android/base/util/av;
.super Ljava/lang/Object;
.source "SyncLaunchDataTask.java"


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/base/util/av;->a:Landroid/content/Context;

    .line 55
    iget-object v0, p0, Lcom/xueqiu/android/base/util/av;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/base/util/av;->b:Landroid/content/SharedPreferences;

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/base/util/av;)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const-wide/16 v8, 0x0

    .line 10084
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 11177
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->e:Z

    .line 10085
    if-eqz v0, :cond_2

    .line 10086
    :cond_0
    sget-object v0, Lcom/xueqiu/android/base/util/ag;->d:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/base/util/av$14;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/util/av$14;-><init>(Lcom/xueqiu/android/base/util/av;)V

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lrx/h;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    .line 10098
    :cond_1
    :goto_0
    return-void

    .line 10095
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/base/util/av;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/base/util/av;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 12069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 12182
    iget-object v0, v0, Lcom/xueqiu/android/base/t;->a:Ljava/lang/String;

    .line 10097
    if-eqz v0, :cond_1

    .line 12227
    const-string v0, "enter_button_config_updated"

    iget-object v1, p0, Lcom/xueqiu/android/base/util/av;->a:Landroid/content/Context;

    invoke-static {v0, v8, v9, v1}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getLong(Ljava/lang/String;JLandroid/content/Context;)J

    move-result-wide v0

    .line 12228
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/base/util/av$19;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/util/av$19;-><init>(Lcom/xueqiu/android/base/util/av;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/xueqiu/android/base/b/ai;->s(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 12250
    iget-object v0, p0, Lcom/xueqiu/android/base/util/av;->a:Landroid/content/Context;

    const-string v1, "cube_rank_filter_updated"

    invoke-static {v0, v1, v8, v9}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 12251
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    const/4 v5, 0x0

    new-instance v6, Lcom/xueqiu/android/base/util/av$20;

    invoke-direct {v6, p0, v2, v3}, Lcom/xueqiu/android/base/util/av$20;-><init>(Lcom/xueqiu/android/base/util/av;J)V

    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/ai;->a(JILjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 12270
    const v0, 0x7f070363

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    .line 12271
    const v1, 0x7f070368

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    .line 12272
    const v2, 0x7f0c0016

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->e(I)[Ljava/lang/String;

    move-result-object v2

    .line 12273
    if-eqz v2, :cond_3

    array-length v3, v2

    if-gtz v3, :cond_4

    .line 12338
    :cond_3
    :goto_1
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/base/util/av$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/util/av$4;-><init>(Lcom/xueqiu/android/base/util/av;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/ai;->g(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 13317
    const v0, 0x7f0704c9

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    .line 13318
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v4

    .line 13319
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    new-instance v2, Lcom/xueqiu/android/base/util/av$3;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/base/util/av$3;-><init>(Lcom/xueqiu/android/base/util/av;)V

    .line 13726
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->m:Lcom/xueqiu/android/base/b/am;

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/base/b/am;->a([Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 14362
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/base/util/av$5;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/util/av$5;-><init>(Lcom/xueqiu/android/base/util/av;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/ai;->h(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 14383
    iget-object v0, p0, Lcom/xueqiu/android/base/util/av;->b:Landroid/content/SharedPreferences;

    const-string v1, "quote_type_filed_map_config_updated"

    invoke-interface {v0, v1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 14384
    const-string v2, "stk_quote_type_field5"

    .line 14385
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/base/util/av$6;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/base/util/av$6;-><init>(Lcom/xueqiu/android/base/util/av;)V

    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 15069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 15186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 14411
    if-eqz v0, :cond_5

    .line 14412
    const-string v2, "profile_menu_anonymous"

    .line 14413
    iget-object v0, p0, Lcom/xueqiu/android/base/util/av;->a:Landroid/content/Context;

    const-string v1, "profile_menu_config_updated_anonymous"

    invoke-static {v0, v1, v8, v9}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 14418
    :goto_2
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/base/util/av$7;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/base/util/av$7;-><init>(Lcom/xueqiu/android/base/util/av;)V

    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 15548
    invoke-static {}, Lcom/xueqiu/android/base/a;->a()Lcom/xueqiu/android/base/a;

    move-result-object v0

    .line 16273
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->c()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v4, "0x05"

    .line 16275
    :goto_3
    const-string v5, "0x07"

    .line 16276
    const-string v6, "0"

    .line 16277
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 17069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 17077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 16278
    new-instance v7, Lcom/xueqiu/android/base/a$3;

    invoke-direct {v7, v0}, Lcom/xueqiu/android/base/a$3;-><init>(Lcom/xueqiu/android/base/a;)V

    .line 16277
    invoke-virtual/range {v1 .. v7}, Lcom/xueqiu/android/base/b/ai;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 17331
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v4, "0x05"

    .line 17333
    :goto_4
    const-string v5, "0x08"

    .line 17334
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 18069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 18077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 17335
    new-instance v6, Lcom/xueqiu/android/base/a$4;

    invoke-direct {v6, v0}, Lcom/xueqiu/android/base/a$4;-><init>(Lcom/xueqiu/android/base/a;)V

    .line 17334
    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/ai;->a(JLjava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 18645
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 19069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 19077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 18645
    new-instance v4, Lcom/xueqiu/android/base/a$8;

    invoke-direct {v4, v0}, Lcom/xueqiu/android/base/a$8;-><init>(Lcom/xueqiu/android/base/a;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/xueqiu/android/base/b/ai;->r(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 16112
    invoke-virtual {v0}, Lcom/xueqiu/android/base/a;->e()V

    .line 19204
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    const/16 v1, 0x8

    new-instance v2, Lcom/xueqiu/android/base/util/av$18;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/base/util/av$18;-><init>(Lcom/xueqiu/android/base/util/av;)V

    invoke-virtual {v0, v1, v8, v9, v2}, Lcom/xueqiu/android/base/b/ai;->a(IJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 20176
    iget-object v0, p0, Lcom/xueqiu/android/base/util/av;->b:Landroid/content/SharedPreferences;

    const-string v1, "quote_type_filed_map_config_updated"

    invoke-interface {v0, v1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 20177
    const-string v2, "stk_cata"

    .line 20178
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/base/util/av$17;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/base/util/av$17;-><init>(Lcom/xueqiu/android/base/util/av;)V

    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 20500
    iget-object v0, p0, Lcom/xueqiu/android/base/util/av;->b:Landroid/content/SharedPreferences;

    const-string v1, "android_apk_version_config_update"

    invoke-interface {v0, v1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 20501
    const-string v2, "android_upgrade_config"

    .line 20502
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/base/util/av$11;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/base/util/av$11;-><init>(Lcom/xueqiu/android/base/util/av;)V

    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 21122
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/base/util/av$15;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/util/av$15;-><init>(Lcom/xueqiu/android/base/util/av;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/ai;->a(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 22069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 22186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 10113
    if-nez v0, :cond_1

    .line 22527
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    const v1, 0x36ee80

    div-int/2addr v0, v1

    .line 22528
    const-string v1, "time_zone"

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/xueqiu/android/base/util/av;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getInt(Ljava/lang/String;ILandroid/content/Context;)I

    move-result v1

    .line 22529
    if-eq v1, v0, :cond_1

    .line 22532
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/base/util/av$13;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/base/util/av$13;-><init>(Lcom/xueqiu/android/base/util/av;I)V

    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/base/b/ai;->c(ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto/16 :goto_0

    .line 12276
    :cond_4
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v3

    new-instance v5, Lcom/xueqiu/android/base/util/av$2;

    invoke-direct {v5, p0, v0, v1, v2}, Lcom/xueqiu/android/base/util/av$2;-><init>(Lcom/xueqiu/android/base/util/av;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v3, v2, v5}, Lcom/xueqiu/android/base/b/ai;->b([Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto/16 :goto_1

    .line 14415
    :cond_5
    const-string v2, "profile_menu_v8.1"

    .line 14416
    iget-object v0, p0, Lcom/xueqiu/android/base/util/av;->a:Landroid/content/Context;

    const-string v1, "profile_menu_config_updated"

    invoke-static {v0, v1, v8, v9}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    goto/16 :goto_2

    .line 16273
    :cond_6
    const-string v4, "0x04"

    goto/16 :goto_3

    .line 17331
    :cond_7
    const-string v4, "0x04"

    goto/16 :goto_4
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 4069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 4193
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->c:Z

    .line 61
    if-nez v0, :cond_0

    .line 62
    sget-object v0, Lcom/xueqiu/android/base/util/ag;->d:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/base/util/av$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/util/av$1;-><init>(Lcom/xueqiu/android/base/util/av;)V

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lrx/h;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    .line 80
    :goto_0
    return-void

    .line 72
    :cond_0
    sget-object v0, Lcom/xueqiu/android/base/util/ag;->d:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/base/util/av$12;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/util/av$12;-><init>(Lcom/xueqiu/android/base/util/av;)V

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lrx/h;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    .line 79
    invoke-virtual {p0}, Lcom/xueqiu/android/base/util/av;->b()V

    goto :goto_0
.end method

.method final b()V
    .locals 5

    .prologue
    .line 146
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 5177
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->e:Z

    .line 147
    if-eqz v0, :cond_2

    .line 148
    :cond_0
    sget-object v0, Lcom/xueqiu/android/base/util/ag;->d:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/base/util/av$16;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/util/av$16;-><init>(Lcom/xueqiu/android/base/util/av;)V

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lrx/h;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    .line 169
    :cond_1
    :goto_0
    return-void

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/base/util/av;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/base/util/av;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 6069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 6182
    iget-object v0, v0, Lcom/xueqiu/android/base/t;->a:Ljava/lang/String;

    .line 159
    if-eqz v0, :cond_1

    .line 7069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 7186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 162
    if-nez v0, :cond_1

    .line 7451
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/base/util/av$8;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/util/av$8;-><init>(Lcom/xueqiu/android/base/util/av;)V

    .line 7714
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->m:Lcom/xueqiu/android/base/b/am;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/am;->b(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 8485
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/base/util/av$10;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/util/av$10;-><init>(Lcom/xueqiu/android/base/util/av;)V

    .line 9358
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->m:Lcom/xueqiu/android/base/b/am;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/am;->d(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 9466
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/base/util/av$9;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/util/av$9;-><init>(Lcom/xueqiu/android/base/util/av;)V

    .line 9718
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->m:Lcom/xueqiu/android/base/b/am;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/am;->c(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 167
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xueqiu.android.action.updateBrokerList"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method
