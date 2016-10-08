.class final Lcom/xueqiu/android/community/a/q$3;
.super Ljava/lang/Object;
.source "PublicTimelineAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/a/q;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/Interview;

.field final synthetic b:Lcom/xueqiu/android/community/a/q;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/q;Lcom/xueqiu/android/community/model/Interview;)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Lcom/xueqiu/android/community/a/q$3;->b:Lcom/xueqiu/android/community/a/q;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/q$3;->a:Lcom/xueqiu/android/community/model/Interview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 499
    iget-object v0, p0, Lcom/xueqiu/android/community/a/q$3;->a:Lcom/xueqiu/android/community/model/Interview;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Interview;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/a/q$3;->b:Lcom/xueqiu/android/community/a/q;

    iget-object v1, v1, Lcom/xueqiu/android/community/a/q;->i:Lcom/xueqiu/android/community/a/o;

    invoke-static {v1}, Lcom/xueqiu/android/community/a/o;->a(Lcom/xueqiu/android/community/a/o;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 500
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x44c

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 501
    const-string v1, "status_id"

    iget-object v2, p0, Lcom/xueqiu/android/community/a/q$3;->a:Lcom/xueqiu/android/community/model/Interview;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Interview;->getInterviewId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 502
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 503
    return-void
.end method
