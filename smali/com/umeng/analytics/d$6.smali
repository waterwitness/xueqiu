.class Lcom/umeng/analytics/d$6;
.super Lcom/umeng/analytics/f;
.source "InternalAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/d;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/d;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/analytics/d$6;->a:Lcom/umeng/analytics/d;

    iput-object p2, p0, Lcom/umeng/analytics/d$6;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/umeng/analytics/d$6;->c:Ljava/lang/String;

    .line 271
    invoke-direct {p0}, Lcom/umeng/analytics/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    .line 273
    iget-object v0, p0, Lcom/umeng/analytics/d$6;->a:Lcom/umeng/analytics/d;

    invoke-static {v0}, Lcom/umeng/analytics/d;->a(Lcom/umeng/analytics/d;)Lu/aly/gy;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/d$6;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/analytics/d$6;->c:Ljava/lang/String;

    .line 1115
    invoke-static {v1}, Lu/aly/gy;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1119
    iget-object v3, v0, Lu/aly/gy;->a:Lu/aly/gw;

    invoke-static {v1, v2}, Lu/aly/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lu/aly/gw;->a(Ljava/lang/String;)Lu/aly/b;

    move-result-object v2

    .line 1121
    if-eqz v2, :cond_0

    .line 1122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v2, Lu/aly/b;->a:J

    sub-long/2addr v4, v6

    long-to-int v3, v4

    .line 1123
    iget-object v2, v2, Lu/aly/b;->d:Ljava/util/Map;

    int-to-long v4, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Lu/aly/gy;->a(Ljava/lang/String;Ljava/util/Map;J)V

    .line 274
    :cond_0
    return-void
.end method
