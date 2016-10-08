.class public final Lcom/pingan/b/a/m;
.super Ljava/lang/Object;
.source "ResponseInfo.java"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:D

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:I

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:J

.field public final m:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDJLjava/lang/String;)V
    .locals 7

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p1, p0, Lcom/pingan/b/a/m;->a:I

    .line 86
    iput-object p2, p0, Lcom/pingan/b/a/m;->b:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/pingan/b/a/m;->c:Ljava/lang/String;

    .line 88
    iput-object p4, p0, Lcom/pingan/b/a/m;->d:Ljava/lang/String;

    .line 89
    iput-object p5, p0, Lcom/pingan/b/a/m;->g:Ljava/lang/String;

    .line 90
    iput-object p6, p0, Lcom/pingan/b/a/m;->j:Ljava/lang/String;

    .line 91
    move-wide/from16 v0, p9

    iput-wide v0, p0, Lcom/pingan/b/a/m;->f:D

    .line 92
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/pingan/b/a/m;->e:Ljava/lang/String;

    .line 93
    iput-object p7, p0, Lcom/pingan/b/a/m;->h:Ljava/lang/String;

    .line 94
    iput p8, p0, Lcom/pingan/b/a/m;->i:I

    .line 95
    invoke-static {}, Lcom/pingan/b/a/q;->a()Lcom/pingan/b/a/q;

    move-result-object v2

    iget-object v2, v2, Lcom/pingan/b/a/q;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/pingan/b/a/m;->k:Ljava/lang/String;

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/pingan/b/a/m;->l:J

    .line 97
    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcom/pingan/b/a/m;->m:J

    .line 98
    return-void
.end method

.method public static a()Lcom/pingan/b/a/m;
    .locals 15

    .prologue
    .line 101
    new-instance v1, Lcom/pingan/b/a/m;

    const/4 v2, -0x2

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const/4 v9, -0x1

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-string v14, "cancelled by user"

    invoke-direct/range {v1 .. v14}, Lcom/pingan/b/a/m;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDJLjava/lang/String;)V

    return-object v1
.end method

.method public static a(Ljava/lang/Exception;)Lcom/pingan/b/a/m;
    .locals 15

    .prologue
    .line 115
    new-instance v1, Lcom/pingan/b/a/m;

    const/4 v2, -0x3

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const/4 v9, -0x1

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-direct/range {v1 .. v14}, Lcom/pingan/b/a/m;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDJLjava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final b()Z
    .locals 2

    .prologue
    .line 124
    iget v0, p0, Lcom/pingan/b/a/m;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/pingan/b/a/m;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 139
    .line 1128
    iget v2, p0, Lcom/pingan/b/a/m;->a:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/pingan/b/a/m;->a:I

    const/16 v3, -0x3eb

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/pingan/b/a/m;->a:I

    const/16 v3, -0x3ec

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/pingan/b/a/m;->a:I

    const/16 v3, -0x3e9

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/pingan/b/a/m;->a:I

    const/16 v3, -0x3ed

    if-ne v2, v3, :cond_5

    :cond_0
    move v2, v1

    .line 139
    :goto_0
    if-nez v2, :cond_3

    .line 1134
    iget v2, p0, Lcom/pingan/b/a/m;->a:I

    const/16 v3, 0x1f4

    if-lt v2, v3, :cond_1

    iget v2, p0, Lcom/pingan/b/a/m;->a:I

    const/16 v3, 0x258

    if-ge v2, v3, :cond_1

    iget v2, p0, Lcom/pingan/b/a/m;->a:I

    const/16 v3, 0x243

    if-ne v2, v3, :cond_2

    :cond_1
    iget v2, p0, Lcom/pingan/b/a/m;->a:I

    const/16 v3, 0x3e4

    if-ne v2, v3, :cond_6

    :cond_2
    move v2, v1

    .line 139
    :goto_1
    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    return v0

    :cond_5
    move v2, v0

    .line 1128
    goto :goto_0

    :cond_6
    move v2, v0

    .line 1134
    goto :goto_1
.end method

.method public final d()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 143
    .line 2120
    iget v2, p0, Lcom/pingan/b/a/m;->a:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    move v2, v0

    .line 143
    :goto_0
    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/pingan/b/a/m;->c()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/pingan/b/a/m;->a:I

    const/16 v3, 0x196

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/pingan/b/a/m;->a:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/pingan/b/a/m;->e:Ljava/lang/String;

    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v1

    .line 2120
    goto :goto_0

    :cond_2
    move v0, v1

    .line 143
    goto :goto_1
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/pingan/b/a/m;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 148
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "{ResponseInfo:%s,status:%d, reqId:%s, xlog:%s, xvia:%s, host:%s, path:%s, ip:%s, port:%d, duration:%f s, time:%d, sent:%d,error:%s}"

    const/16 v2, 0xd

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/pingan/b/a/m;->k:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/pingan/b/a/m;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/pingan/b/a/m;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/pingan/b/a/m;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/pingan/b/a/m;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/pingan/b/a/m;->g:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/pingan/b/a/m;->j:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/pingan/b/a/m;->h:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget v4, p0, Lcom/pingan/b/a/m;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    iget-wide v4, p0, Lcom/pingan/b/a/m;->f:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    iget-wide v4, p0, Lcom/pingan/b/a/m;->l:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xb

    iget-wide v4, p0, Lcom/pingan/b/a/m;->m:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xc

    iget-object v4, p0, Lcom/pingan/b/a/m;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
