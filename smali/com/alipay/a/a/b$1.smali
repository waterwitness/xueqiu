.class final Lcom/alipay/a/a/b$1;
.super Ljava/lang/Object;
.source "DeviceIdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/a/a/b;->a(Landroid/content/Context;Ljava/util/Map;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/a/a/b;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/alipay/a/a/b;Landroid/content/Context;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/a/a/b$1;->a:Lcom/alipay/a/a/b;

    iput-object p2, p0, Lcom/alipay/a/a/b$1;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/a/a/b$1;->c:Ljava/util/Map;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/16 v10, 0x14

    const/16 v8, 0x20

    const/4 v2, 0x0

    .line 70
    :try_start_0
    new-instance v4, Lcom/alipay/a/a/c;

    invoke-direct {v4}, Lcom/alipay/a/a/c;-><init>()V

    .line 71
    iget-object v3, p0, Lcom/alipay/a/a/b$1;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/alipay/a/a/b$1;->c:Ljava/util/Map;

    .line 1058
    invoke-static {}, Lcom/alipay/a/a/a;->a()Lcom/alipay/a/a/a;

    .line 1059
    invoke-static {v3}, Lcom/alipay/a/a/f;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1062
    if-eqz v5, :cond_1

    :try_start_1
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1063
    const-string v0, "tid"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1064
    iget-object v6, v4, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    const-string v0, "tid"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2081
    iput-object v0, v6, Lcom/alipay/a/a/d;->p:Ljava/lang/String;

    .line 1065
    :cond_0
    const-string v0, "utdid"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1066
    iget-object v6, v4, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    const-string v0, "utdid"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2089
    iput-object v0, v6, Lcom/alipay/a/a/d;->q:Ljava/lang/String;

    .line 1069
    :cond_1
    invoke-static {v3}, Lcom/alipay/a/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1070
    iget-object v0, v4, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    invoke-static {v3}, Lcom/alipay/a/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 2097
    iput-object v5, v0, Lcom/alipay/a/a/d;->a:Ljava/lang/String;

    .line 1071
    :cond_2
    invoke-static {v3}, Lcom/alipay/a/a/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1072
    iget-object v0, v4, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    invoke-static {v3}, Lcom/alipay/a/a/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 2105
    iput-object v5, v0, Lcom/alipay/a/a/d;->b:Ljava/lang/String;

    .line 1073
    :cond_3
    invoke-static {v3}, Lcom/alipay/a/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1074
    iget-object v0, v4, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    invoke-static {v3}, Lcom/alipay/a/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 2113
    iput-object v5, v0, Lcom/alipay/a/a/d;->c:Ljava/lang/String;

    .line 1075
    :cond_4
    invoke-static {}, Lcom/alipay/a/a/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1076
    iget-object v0, v4, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    invoke-static {}, Lcom/alipay/a/a/a;->f()Ljava/lang/String;

    move-result-object v5

    .line 2121
    iput-object v5, v0, Lcom/alipay/a/a/d;->d:Ljava/lang/String;

    .line 1077
    :cond_5
    invoke-static {}, Lcom/alipay/a/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1078
    iget-object v0, v4, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    invoke-static {}, Lcom/alipay/a/a/a;->b()Ljava/lang/String;

    move-result-object v5

    .line 2129
    iput-object v5, v0, Lcom/alipay/a/a/d;->e:Ljava/lang/String;

    .line 1079
    :cond_6
    invoke-static {}, Lcom/alipay/a/a/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1080
    iget-object v0, v4, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    invoke-static {}, Lcom/alipay/a/a/a;->j()Ljava/lang/String;

    move-result-object v5

    .line 2137
    iput-object v5, v0, Lcom/alipay/a/a/d;->f:Ljava/lang/String;

    .line 1081
    :cond_7
    invoke-static {}, Lcom/alipay/a/a/a;->g()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1082
    iget-object v0, v4, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    invoke-static {}, Lcom/alipay/a/a/a;->g()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 2145
    iput-object v5, v0, Lcom/alipay/a/a/d;->g:Ljava/lang/String;

    .line 1083
    :cond_8
    invoke-static {}, Lcom/alipay/a/a/a;->h()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1084
    iget-object v0, v4, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    invoke-static {}, Lcom/alipay/a/a/a;->h()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 2153
    iput-object v5, v0, Lcom/alipay/a/a/d;->h:Ljava/lang/String;

    .line 1085
    :cond_9
    invoke-static {v3}, Lcom/alipay/a/a/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1086
    iget-object v0, v4, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    invoke-static {v3}, Lcom/alipay/a/a/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 2161
    iput-object v5, v0, Lcom/alipay/a/a/d;->i:Ljava/lang/String;

    .line 1087
    :cond_a
    invoke-static {}, Lcom/alipay/a/a/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1088
    iget-object v0, v4, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    invoke-static {}, Lcom/alipay/a/a/a;->e()Ljava/lang/String;

    move-result-object v5

    .line 2169
    iput-object v5, v0, Lcom/alipay/a/a/d;->j:Ljava/lang/String;

    .line 1089
    :cond_b
    invoke-static {}, Lcom/alipay/a/a/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1090
    iget-object v0, v4, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    invoke-static {}, Lcom/alipay/a/a/a;->i()Ljava/lang/String;

    move-result-object v5

    .line 2193
    iput-object v5, v0, Lcom/alipay/a/a/d;->k:Ljava/lang/String;

    .line 1091
    :cond_c
    invoke-static {}, Lcom/alipay/a/a/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1092
    iget-object v0, v4, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    invoke-static {}, Lcom/alipay/a/a/a;->c()Ljava/lang/String;

    move-result-object v5

    .line 2201
    iput-object v5, v0, Lcom/alipay/a/a/d;->l:Ljava/lang/String;

    .line 1093
    :cond_d
    invoke-static {}, Lcom/alipay/a/a/a;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1094
    iget-object v0, v4, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    invoke-static {}, Lcom/alipay/a/a/a;->k()Ljava/lang/String;

    move-result-object v5

    .line 2209
    iput-object v5, v0, Lcom/alipay/a/a/d;->m:Ljava/lang/String;

    .line 1095
    :cond_e
    invoke-static {}, Lcom/alipay/a/a/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1096
    iget-object v0, v4, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    invoke-static {}, Lcom/alipay/a/a/a;->d()Ljava/lang/String;

    move-result-object v5

    .line 2217
    iput-object v5, v0, Lcom/alipay/a/a/d;->n:Ljava/lang/String;

    .line 1097
    :cond_f
    invoke-static {v3}, Lcom/alipay/a/a/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1098
    iget-object v0, v4, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    invoke-static {v3}, Lcom/alipay/a/a/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 3035
    iput-object v5, v0, Lcom/alipay/a/a/d;->r:Ljava/lang/String;

    .line 1100
    :cond_10
    invoke-static {v3}, Lcom/alipay/a/a/c;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    .line 1101
    if-eqz v3, :cond_14

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 1102
    const-string v0, "apdtk"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1103
    iget-object v5, v4, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    const-string v0, "apdtk"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3185
    iput-object v0, v5, Lcom/alipay/a/a/d;->u:Ljava/lang/String;

    .line 1105
    :cond_11
    const-string v0, "deviceId"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1106
    iget-object v5, v4, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    const-string v0, "deviceId"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4051
    iput-object v0, v5, Lcom/alipay/a/a/d;->t:Ljava/lang/String;

    .line 1107
    :cond_12
    const-string v0, "time"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1108
    iget-object v5, v4, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    const-string v0, "time"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4177
    iput-object v0, v5, Lcom/alipay/a/a/d;->o:Ljava/lang/String;

    .line 1109
    :cond_13
    const-string v0, "rule"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1110
    iget-object v5, v4, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    const-string v0, "rule"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5073
    iput-object v0, v5, Lcom/alipay/a/a/d;->v:Ljava/lang/String;

    .line 1113
    :cond_14
    invoke-virtual {v4}, Lcom/alipay/a/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1114
    invoke-virtual {v4}, Lcom/alipay/a/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v8, :cond_19

    .line 1115
    iget-object v0, v4, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    invoke-virtual {v4}, Lcom/alipay/a/a/c;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 6043
    iput-object v3, v0, Lcom/alipay/a/a/d;->s:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    :cond_15
    :goto_0
    :try_start_2
    iget-object v5, p0, Lcom/alipay/a/a/b$1;->b:Landroid/content/Context;

    sget-object v6, Lcom/alipay/a/a/b;->a:Ljava/util/Map;

    .line 7126
    if-eqz v6, :cond_23

    .line 7421
    invoke-virtual {v4}, Lcom/alipay/a/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 7423
    invoke-virtual {v4}, Lcom/alipay/a/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1c

    move v0, v1

    .line 7302
    :goto_1
    if-eqz v0, :cond_1e

    .line 7427
    invoke-virtual {v4}, Lcom/alipay/a/a/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 7430
    invoke-virtual {v4}, Lcom/alipay/a/a/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1d

    move v0, v1

    .line 7302
    :goto_2
    if-eqz v0, :cond_1e

    move v0, v1

    .line 7133
    :goto_3
    invoke-static {v6}, Lcom/alipay/a/a/c;->a(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 7135
    if-nez v0, :cond_16

    .line 7136
    const-string v0, "priDeviceId"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 7137
    const-string v0, "time"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 7138
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "priDeviceId"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "time"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7139
    invoke-virtual {v4, v0}, Lcom/alipay/a/a/c;->a(Ljava/lang/String;)V

    .line 7140
    invoke-virtual {v4, v0}, Lcom/alipay/a/a/c;->b(Ljava/lang/String;)V

    .line 7143
    :cond_16
    const-string v0, "checkcode"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7441
    invoke-virtual {v4}, Lcom/alipay/a/a/c;->c()Ljava/lang/String;

    move-result-object v1

    .line 7442
    if-nez v1, :cond_17

    .line 7443
    const-string v1, ""

    .line 7445
    :cond_17
    invoke-static {v1}, Lcom/alipay/a/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7446
    if-nez v1, :cond_1f

    .line 7447
    const-string v1, ""

    move-object v3, v1

    .line 7585
    :goto_4
    invoke-virtual {v4}, Lcom/alipay/a/a/c;->a()Ljava/lang/String;

    move-result-object v1

    .line 7586
    invoke-virtual {v4}, Lcom/alipay/a/a/c;->b()Ljava/lang/String;

    move-result-object v7

    .line 7587
    invoke-static {v1}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_20

    .line 7588
    iget-object v7, v4, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 8047
    iget-object v7, v7, Lcom/alipay/a/a/d;->t:Ljava/lang/String;

    .line 7588
    const/4 v8, 0x0

    const/16 v9, 0x20

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 7145
    :goto_5
    if-eqz v1, :cond_23

    .line 9434
    if-eqz v0, :cond_18

    .line 9435
    if-nez v3, :cond_22

    :cond_18
    move v0, v2

    .line 7145
    :goto_6
    if-eqz v0, :cond_23

    .line 7146
    const-string v0, "apdid"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_7
    return-void

    .line 1116
    :cond_19
    :try_start_3
    invoke-virtual {v4}, Lcom/alipay/a/a/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1117
    invoke-virtual {v4}, Lcom/alipay/a/a/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v8, :cond_15

    .line 1118
    iget-object v0, v4, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    invoke-virtual {v4}, Lcom/alipay/a/a/c;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 7043
    iput-object v3, v0, Lcom/alipay/a/a/d;->s:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 1119
    :catch_0
    move-exception v0

    .line 1120
    :try_start_4
    invoke-static {v0}, Lcom/alipay/a/a/f;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/alipay/a/a/c;->c(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 74
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 75
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 76
    iget-object v0, p0, Lcom/alipay/a/a/b$1;->c:Ljava/util/Map;

    const-string v4, "tid"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/alipay/a/a/b$1;->c:Ljava/util/Map;

    const-string v4, "tid"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v10, :cond_1a

    .line 77
    iget-object v0, p0, Lcom/alipay/a/a/b$1;->c:Ljava/util/Map;

    const-string v4, "tid"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_1a
    iget-object v0, p0, Lcom/alipay/a/a/b$1;->c:Ljava/util/Map;

    const-string v4, "utdid"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/alipay/a/a/b$1;->c:Ljava/util/Map;

    const-string v4, "utdid"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v10, :cond_1b

    .line 79
    iget-object v0, p0, Lcom/alipay/a/a/b$1;->c:Ljava/util/Map;

    const-string v4, "utdid"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_1b
    invoke-static {v1}, Lcom/alipay/a/a/f;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-static {v3}, Lcom/alipay/a/a/f;->a(Ljava/util/List;)V

    goto/16 :goto_7

    :cond_1c
    move v0, v2

    .line 7423
    goto/16 :goto_1

    :cond_1d
    move v0, v2

    .line 7430
    goto/16 :goto_2

    :cond_1e
    move v0, v2

    .line 7302
    goto/16 :goto_3

    :cond_1f
    move-object v3, v1

    .line 7448
    goto/16 :goto_4

    .line 7589
    :cond_20
    :try_start_5
    invoke-static {v7}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 7590
    iget-object v1, v4, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 9047
    iget-object v1, v1, Lcom/alipay/a/a/d;->t:Ljava/lang/String;

    .line 7590
    const/4 v8, 0x0

    const/16 v9, 0x20

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_5

    :cond_21
    move v1, v2

    .line 7592
    goto/16 :goto_5

    .line 9437
    :cond_22
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_6

    .line 7151
    :cond_23
    invoke-virtual {v4, v5}, Lcom/alipay/a/a/c;->b(Landroid/content/Context;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_7
.end method
