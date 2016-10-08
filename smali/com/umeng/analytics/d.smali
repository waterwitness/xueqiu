.class public Lcom/umeng/analytics/d;
.super Ljava/lang/Object;
.source "InternalAgent.java"

# interfaces
.implements Lu/aly/he;


# instance fields
.field private final a:Lcom/umeng/analytics/onlineconfig/a;

.field private b:Landroid/content/Context;

.field private c:Lcom/umeng/analytics/c;

.field private d:Lu/aly/gx;

.field private e:Lu/aly/hj;

.field private f:Lu/aly/hf;

.field private g:Lu/aly/gy;

.field private h:Lu/aly/gv;

.field private i:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/umeng/analytics/onlineconfig/a;

    invoke-direct {v0}, Lcom/umeng/analytics/onlineconfig/a;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d;->a:Lcom/umeng/analytics/onlineconfig/a;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d;->b:Landroid/content/Context;

    .line 30
    new-instance v0, Lu/aly/gx;

    invoke-direct {v0}, Lu/aly/gx;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/gx;

    .line 31
    new-instance v0, Lu/aly/hj;

    invoke-direct {v0}, Lu/aly/hj;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d;->e:Lu/aly/hj;

    .line 32
    new-instance v0, Lu/aly/hf;

    invoke-direct {v0}, Lu/aly/hf;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d;->f:Lu/aly/hf;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/analytics/d;->i:Z

    .line 39
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/gx;

    .line 1026
    iput-object p0, v0, Lu/aly/gx;->a:Lu/aly/he;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/d;)Lu/aly/gy;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/umeng/analytics/d;->g:Lu/aly/gy;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/analytics/d;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->g(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/umeng/analytics/d;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->h(Landroid/content/Context;)V

    return-void
.end method

.method private f(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->i:Z

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/d;->b:Landroid/content/Context;

    .line 45
    new-instance v0, Lu/aly/gy;

    iget-object v1, p0, Lcom/umeng/analytics/d;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lu/aly/gy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/analytics/d;->g:Lu/aly/gy;

    .line 46
    iget-object v0, p0, Lcom/umeng/analytics/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/gv;->a(Landroid/content/Context;)Lu/aly/gv;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/d;->h:Lu/aly/gv;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/analytics/d;->i:Z

    .line 50
    :cond_0
    return-void
.end method

.method private g(Landroid/content/Context;)V
    .locals 20

    .prologue
    .line 191
    .line 2018
    const-string v2, "umeng_general_config"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 1118
    if-eqz v11, :cond_3

    .line 2162
    const-string v2, "a_start_time"

    const-wide/16 v4, 0x0

    invoke-interface {v11, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2163
    const-string v4, "a_end_time"

    const-wide/16 v6, 0x0

    invoke-interface {v11, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 2164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2167
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-eqz v8, :cond_1

    sub-long v2, v6, v2

    sget-wide v8, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    cmp-long v2, v2, v8

    if-gez v2, :cond_1

    .line 2168
    const-string v2, "MobclickAgent"

    const-string v3, "onResume called before onPause"

    invoke-static {v2, v3}, Lu/aly/es;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2175
    :cond_0
    const/4 v2, 0x0

    .line 1122
    :goto_0
    if-eqz v2, :cond_d

    .line 2180
    invoke-static/range {p1 .. p1}, Lu/aly/gv;->a(Landroid/content/Context;)Lu/aly/gv;

    move-result-object v12

    .line 3100
    invoke-static/range {p1 .. p1}, Lu/aly/er;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 3101
    invoke-static/range {p1 .. p1}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 3102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3104
    if-nez v3, :cond_2

    .line 3105
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Appkey is null or empty, Please check AndroidManifest.xml"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2172
    :cond_1
    sub-long v2, v6, v4

    sget-wide v4, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 2173
    const/4 v2, 0x1

    goto :goto_0

    .line 3108
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 3109
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3110
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3111
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3112
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lu/aly/ex;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 5018
    const-string v2, "umeng_general_config"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 4036
    const-string v2, "session_id"

    const/4 v3, 0x0

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4038
    if-nez v4, :cond_5

    const/4 v2, 0x0

    .line 2185
    :goto_1
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 2187
    const-string v4, "session_id"

    invoke-interface {v3, v4, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2188
    const-string v4, "session_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2189
    const-string v4, "session_end_time"

    const-wide/16 v6, 0x0

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2191
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2193
    if-eqz v2, :cond_c

    .line 2194
    invoke-virtual {v12, v2}, Lu/aly/gv;->a(Lu/aly/ha;)V

    .line 1124
    :goto_2
    const-string v2, "MobclickAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Start new session: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lu/aly/es;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    :goto_3
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1132
    const-string v3, "a_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1133
    const-string v3, "a_end_time"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1135
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 193
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/umeng/analytics/d;->c:Lcom/umeng/analytics/c;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/umeng/analytics/d;->c:Lcom/umeng/analytics/c;

    invoke-interface {v2}, Lcom/umeng/analytics/c;->a()V

    .line 194
    :cond_4
    return-void

    .line 4040
    :cond_5
    const-string v2, "session_start_time"

    const-wide/16 v6, 0x0

    invoke-interface {v14, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 4041
    const-string v2, "session_end_time"

    const-wide/16 v8, 0x0

    invoke-interface {v14, v2, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 4042
    const-wide/16 v2, 0x0

    .line 4044
    const-wide/16 v16, 0x0

    cmp-long v5, v8, v16

    if-eqz v5, :cond_6

    .line 4045
    sub-long v2, v8, v6

    .line 4046
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    const-wide/32 v18, 0x5265c00

    cmp-long v5, v16, v18

    if-lez v5, :cond_6

    .line 4047
    const-wide/16 v2, 0x0

    .line 4051
    :cond_6
    new-instance v10, Lu/aly/g;

    invoke-direct {v10}, Lu/aly/g;-><init>()V

    .line 5234
    iput-object v4, v10, Lu/aly/dn;->a:Ljava/lang/String;

    .line 5258
    iput-wide v6, v10, Lu/aly/dn;->b:J

    .line 5259
    invoke-virtual {v10}, Lu/aly/dn;->a()V

    .line 5281
    iput-wide v8, v10, Lu/aly/dn;->c:J

    .line 5282
    invoke-virtual {v10}, Lu/aly/dn;->b()V

    .line 5304
    iput-wide v2, v10, Lu/aly/dn;->d:J

    .line 5305
    invoke-virtual {v10}, Lu/aly/dn;->c()V

    .line 4058
    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->getLocation()[D

    move-result-object v2

    .line 4059
    if-eqz v2, :cond_8

    .line 4060
    new-instance v3, Lu/aly/cf;

    const/4 v4, 0x0

    aget-wide v4, v2, v4

    const/4 v6, 0x1

    aget-wide v6, v2, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct/range {v3 .. v9}, Lu/aly/cf;-><init>(DDJ)V

    .line 4061
    invoke-virtual {v10}, Lu/aly/g;->e()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 5370
    iget-object v2, v10, Lu/aly/dn;->f:Ljava/util/List;

    if-nez v2, :cond_7

    .line 5371
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v10, Lu/aly/dn;->f:Ljava/util/List;

    .line 5373
    :cond_7
    iget-object v2, v10, Lu/aly/dn;->f:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4068
    :cond_8
    :goto_4
    invoke-static/range {p1 .. p1}, Lu/aly/hi;->a(Landroid/content/Context;)Lu/aly/dt;

    move-result-object v2

    .line 4069
    if-eqz v2, :cond_9

    .line 5405
    iput-object v2, v10, Lu/aly/dn;->g:Lu/aly/dt;

    .line 4073
    :cond_9
    invoke-static {v14}, Lu/aly/hj;->a(Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object v2

    .line 4075
    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_a

    .line 6342
    iput-object v2, v10, Lu/aly/dn;->e:Ljava/util/List;

    .line 7085
    :cond_a
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 7087
    const-string v3, "session_start_time"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7088
    const-string v3, "session_end_time"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7089
    const-string v3, "session_id"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7090
    const-string v3, "a_start_time"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7091
    const-string v3, "a_end_time"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7093
    const-string v3, "activities"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7095
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v2, v10

    .line 4081
    goto/16 :goto_1

    .line 4064
    :cond_b
    const/4 v2, 0x1

    new-array v2, v2, [Lu/aly/cf;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 5381
    iput-object v2, v10, Lu/aly/dn;->f:Ljava/util/List;

    goto :goto_4

    .line 2196
    :cond_c
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lu/aly/gv;->a(Lu/aly/ha;)V

    goto/16 :goto_2

    .line 1126
    :cond_d
    const-string v2, "session_id"

    const/4 v3, 0x0

    invoke-interface {v11, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1128
    const-string v3, "MobclickAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Extend current session: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lu/aly/es;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private h(Landroid/content/Context;)V
    .locals 12

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 197
    .line 8018
    const-string v0, "umeng_general_config"

    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 7140
    if-eqz v0, :cond_0

    .line 7144
    const-string v1, "a_start_time"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 7146
    cmp-long v1, v2, v6

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v1, :cond_4

    .line 7147
    const-string v0, "MobclickAgent"

    const-string v1, "onPause called before onResume"

    invoke-static {v0, v1}, Lu/aly/es;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/umeng/analytics/d;->e:Lu/aly/hj;

    .line 9018
    const-string v0, "umeng_general_config"

    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 8070
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 8072
    iget-object v3, v1, Lu/aly/hj;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 8073
    const-string v3, "activities"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8074
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 8076
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 8077
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8078
    const-string v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8081
    :cond_1
    iget-object v4, v1, Lu/aly/hj;->a:Ljava/util/ArrayList;

    monitor-enter v4

    .line 8082
    :try_start_0
    iget-object v0, v1, Lu/aly/hj;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 8087
    iget-object v0, v1, Lu/aly/hj;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8081
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8090
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 8092
    const-string v0, "activities"

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8093
    const-string v0, "activities"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8096
    :cond_2
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 200
    iget-object v0, p0, Lcom/umeng/analytics/d;->c:Lcom/umeng/analytics/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/umeng/analytics/d;->c:Lcom/umeng/analytics/c;

    invoke-interface {v0}, Lcom/umeng/analytics/c;->b()V

    .line 201
    :cond_3
    iget-object v0, p0, Lcom/umeng/analytics/d;->h:Lu/aly/gv;

    invoke-virtual {v0}, Lu/aly/gv;->b()V

    .line 202
    return-void

    .line 7149
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 7151
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 7153
    const-string v1, "a_start_time"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 7154
    const-string v1, "a_end_time"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 7155
    const-string v1, "session_end_time"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 7157
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 8082
    :cond_5
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/hh;

    .line 8083
    const-string v6, "[\"%s\",%d]"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v0, Lu/aly/hh;->a:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-wide v10, v0, Lu/aly/hh;->b:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8084
    const-string v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 8081
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 77
    sput p1, Lcom/umeng/analytics/AnalyticsConfig;->mVerticalType:I

    .line 78
    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 86
    if-nez p1, :cond_1

    .line 87
    const-string v0, "MobclickAgent"

    const-string v1, "unexpected null context in onResume"

    invoke-static {v0, v1}, Lu/aly/es;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Lcom/umeng/analytics/onlineconfig/a;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/onlineconfig/a;->a(Landroid/content/Context;)V

    .line 93
    :try_start_0
    invoke-static {p1}, Lu/aly/gv;->a(Landroid/content/Context;)Lu/aly/gv;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/d;->a:Lcom/umeng/analytics/onlineconfig/a;

    .line 1034
    if-eqz v1, :cond_0

    iget-object v2, v0, Lu/aly/gv;->a:Lu/aly/gz;

    if-eqz v2, :cond_0

    .line 1035
    iget-object v0, v0, Lu/aly/gv;->a:Lu/aly/gz;

    check-cast v0, Lcom/umeng/analytics/onlineconfig/c;

    invoke-virtual {v1, v0}, Lcom/umeng/analytics/onlineconfig/a;->a(Lcom/umeng/analytics/onlineconfig/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 159
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 163
    :cond_0
    if-nez p1, :cond_1

    .line 165
    const-string v0, "MobclickAgent"

    const-string v1, "unexpected null context in reportError"

    invoke-static {v0, v1}, Lu/aly/es;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->i:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->f(Landroid/content/Context;)V

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/d;->h:Lu/aly/gv;

    new-instance v1, Lu/aly/d;

    invoke-direct {v1, p2}, Lu/aly/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lu/aly/d;->a()Lu/aly/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/gv;->a(Lu/aly/ha;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    const-string v1, "MobclickAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lu/aly/es;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 233
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->i:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->f(Landroid/content/Context;)V

    .line 234
    :cond_0
    new-instance v0, Lcom/umeng/analytics/d$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/umeng/analytics/d$3;-><init>(Lcom/umeng/analytics/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/umeng/analytics/e;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    const-string v1, "MobclickAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lu/aly/es;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 8

    .prologue
    .line 215
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->i:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->f(Landroid/content/Context;)V

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/umeng/analytics/d;->g:Lu/aly/gy;

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Lu/aly/gy;->a(Ljava/lang/String;Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    const-string v1, "MobclickAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lu/aly/es;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->i:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->f(Landroid/content/Context;)V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->g:Lu/aly/gy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1072
    :try_start_1
    invoke-static {p2}, Lu/aly/gy;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1077
    :goto_0
    return-void

    .line 1076
    :cond_1
    iget-object v0, v0, Lu/aly/gy;->b:Lu/aly/gv;

    new-instance v1, Lu/aly/e;

    invoke-direct {v1, p2, p3}, Lu/aly/e;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lu/aly/gv;->a(Lu/aly/ha;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1077
    :catch_0
    move-exception v0

    .line 1078
    :try_start_2
    const-string v1, "MobclickAgent"

    const-string v2, "Exception occurred in Mobclick.onEvent(). "

    invoke-static {v1, v2, v0}, Lu/aly/es;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 153
    :catch_1
    move-exception v0

    .line 154
    const-string v1, "MobclickAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lu/aly/es;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 258
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->i:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->f(Landroid/content/Context;)V

    .line 259
    :cond_0
    new-instance v0, Lcom/umeng/analytics/d$5;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/umeng/analytics/d$5;-><init>(Lcom/umeng/analytics/d;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/umeng/analytics/e;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    const-string v1, "MobclickAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lu/aly/es;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 224
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->i:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->f(Landroid/content/Context;)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->g:Lu/aly/gy;

    invoke-virtual {v0, p2, p3, p4, p5}, Lu/aly/gy;->a(Ljava/lang/String;Ljava/util/Map;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    const-string v1, "MobclickAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lu/aly/es;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 178
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->i:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->f(Landroid/content/Context;)V

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/d;->h:Lu/aly/gv;

    new-instance v1, Lu/aly/d;

    invoke-direct {v1, p2}, Lu/aly/d;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Lu/aly/d;->a()Lu/aly/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/gv;->a(Lu/aly/ha;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    const-string v1, "MobclickAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lu/aly/es;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Lcom/umeng/analytics/c;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/umeng/analytics/d;->c:Lcom/umeng/analytics/c;

    .line 74
    return-void
.end method

.method a(Lcom/umeng/analytics/onlineconfig/UmengOnlineConfigureListener;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Lcom/umeng/analytics/onlineconfig/a;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/onlineconfig/a;->a(Lcom/umeng/analytics/onlineconfig/UmengOnlineConfigureListener;)V

    .line 99
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-nez v0, :cond_0

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->e:Lu/aly/hj;

    invoke-virtual {v0, p1}, Lu/aly/hj;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    sput-object p1, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    .line 82
    sput-object p2, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->e:Lu/aly/hj;

    invoke-virtual {v0}, Lu/aly/hj;->a()V

    .line 297
    iget-object v0, p0, Lcom/umeng/analytics/d;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 298
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/d;->h:Lu/aly/gv;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/umeng/analytics/d;->h:Lu/aly/gv;

    new-instance v1, Lu/aly/d;

    invoke-direct {v1, p1}, Lu/aly/d;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lu/aly/gv;->b(Lu/aly/ha;)V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/d;->h(Landroid/content/Context;)V

    .line 302
    iget-object v0, p0, Lcom/umeng/analytics/d;->b:Landroid/content/Context;

    .line 11018
    const-string v1, "umeng_general_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 302
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 305
    :cond_1
    invoke-static {}, Lcom/umeng/analytics/e;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 307
    const-string v1, "MobclickAgent"

    const-string v2, "Exception in onAppCrash"

    invoke-static {v1, v2, v0}, Lu/aly/es;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 103
    const-string v0, "MobclickAgent"

    const-string v1, "unexpected null context in onResume"

    invoke-static {v0, v1}, Lu/aly/es;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 107
    :cond_0
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/umeng/analytics/d;->e:Lu/aly/hj;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/hj;->a(Ljava/lang/String;)V

    .line 112
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->i:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->f(Landroid/content/Context;)V

    .line 114
    :cond_2
    new-instance v0, Lcom/umeng/analytics/d$1;

    invoke-direct {v0, p0, p1}, Lcom/umeng/analytics/d$1;-><init>(Lcom/umeng/analytics/d;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/umeng/analytics/e;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const-string v1, "MobclickAgent"

    .line 122
    const-string v2, "Exception occurred in Mobclick.onResume(). "

    .line 121
    invoke-static {v1, v2, v0}, Lu/aly/es;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 246
    :try_start_0
    new-instance v0, Lcom/umeng/analytics/d$4;

    invoke-direct {v0, p0, p2, p3}, Lcom/umeng/analytics/d$4;-><init>(Lcom/umeng/analytics/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/umeng/analytics/e;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    const-string v1, "MobclickAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lu/aly/es;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-nez v0, :cond_0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->e:Lu/aly/hj;

    invoke-virtual {v0, p1}, Lu/aly/hj;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method c(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 128
    const-string v0, "MobclickAgent"

    const-string v1, "unexpected null context in onPause"

    invoke-static {v0, v1}, Lu/aly/es;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_0
    return-void

    .line 132
    :cond_0
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/umeng/analytics/d;->e:Lu/aly/hj;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/hj;->b(Ljava/lang/String;)V

    .line 137
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->i:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->f(Landroid/content/Context;)V

    .line 139
    :cond_2
    new-instance v0, Lcom/umeng/analytics/d$2;

    invoke-direct {v0, p0, p1}, Lcom/umeng/analytics/d$2;-><init>(Lcom/umeng/analytics/d;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/umeng/analytics/e;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    const-string v1, "MobclickAgent"

    const-string v2, "Exception occurred in Mobclick.onRause(). "

    invoke-static {v1, v2, v0}, Lu/aly/es;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 271
    :try_start_0
    new-instance v0, Lcom/umeng/analytics/d$6;

    invoke-direct {v0, p0, p2, p3}, Lcom/umeng/analytics/d$6;-><init>(Lcom/umeng/analytics/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/umeng/analytics/e;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_0
    return-void

    .line 276
    :catch_0
    move-exception v0

    .line 277
    const-string v1, "MobclickAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lu/aly/es;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method d(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 206
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->i:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->f(Landroid/content/Context;)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->h:Lu/aly/gv;

    invoke-virtual {v0}, Lu/aly/gv;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    const-string v1, "MobclickAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lu/aly/es;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method e(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->e:Lu/aly/hj;

    invoke-virtual {v0}, Lu/aly/hj;->a()V

    .line 284
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->h(Landroid/content/Context;)V

    .line 10018
    const-string v0, "umeng_general_config"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 285
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 287
    invoke-static {}, Lcom/umeng/analytics/e;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
