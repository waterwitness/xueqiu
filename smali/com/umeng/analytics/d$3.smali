.class Lcom/umeng/analytics/d$3;
.super Lcom/umeng/analytics/f;
.source "InternalAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/umeng/analytics/d$3;->a:Lcom/umeng/analytics/d;

    iput-object p2, p0, Lcom/umeng/analytics/d$3;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/umeng/analytics/d$3;->c:Ljava/lang/String;

    .line 234
    invoke-direct {p0}, Lcom/umeng/analytics/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 236
    iget-object v0, p0, Lcom/umeng/analytics/d$3;->a:Lcom/umeng/analytics/d;

    invoke-static {v0}, Lcom/umeng/analytics/d;->a(Lcom/umeng/analytics/d;)Lu/aly/gy;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/d$3;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/analytics/d$3;->c:Ljava/lang/String;

    .line 1083
    invoke-static {v1}, Lu/aly/gy;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lu/aly/gy;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1084
    :cond_0
    :goto_0
    return-void

    .line 1086
    :cond_1
    iget-object v0, v0, Lu/aly/gy;->a:Lu/aly/gw;

    invoke-static {v1, v2}, Lu/aly/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Lu/aly/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lu/aly/b;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lu/aly/gw;->a(Ljava/lang/String;Lu/aly/b;)V

    goto :goto_0
.end method
