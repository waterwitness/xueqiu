.class Lcom/umeng/analytics/d$4;
.super Lcom/umeng/analytics/f;
.source "InternalAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/umeng/analytics/d$4;->a:Lcom/umeng/analytics/d;

    iput-object p2, p0, Lcom/umeng/analytics/d$4;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/umeng/analytics/d$4;->c:Ljava/lang/String;

    .line 246
    invoke-direct {p0}, Lcom/umeng/analytics/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    .line 248
    iget-object v0, p0, Lcom/umeng/analytics/d$4;->a:Lcom/umeng/analytics/d;

    invoke-static {v0}, Lcom/umeng/analytics/d;->a(Lcom/umeng/analytics/d;)Lu/aly/gy;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/analytics/d$4;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/umeng/analytics/d$4;->c:Ljava/lang/String;

    .line 1090
    invoke-static {v2}, Lu/aly/gy;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v3}, Lu/aly/gy;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1091
    :cond_0
    :goto_0
    return-void

    .line 1094
    :cond_1
    iget-object v0, v1, Lu/aly/gy;->a:Lu/aly/gw;

    invoke-static {v2, v3}, Lu/aly/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lu/aly/gw;->a(Ljava/lang/String;)Lu/aly/b;

    move-result-object v0

    .line 1096
    if-eqz v0, :cond_0

    .line 1097
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lu/aly/b;->a:J

    sub-long/2addr v4, v6

    long-to-int v0, v4

    .line 1098
    int-to-long v4, v0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lu/aly/gy;->a(Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_0
.end method
