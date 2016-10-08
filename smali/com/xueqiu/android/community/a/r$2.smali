.class final Lcom/xueqiu/android/community/a/r$2;
.super Ljava/lang/Object;
.source "PublicTimelineAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/a/r;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/LiveNews;

.field final synthetic b:Lcom/xueqiu/android/community/a/r;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/r;Lcom/xueqiu/android/community/model/LiveNews;)V
    .locals 0

    .prologue
    .line 682
    iput-object p1, p0, Lcom/xueqiu/android/community/a/r$2;->b:Lcom/xueqiu/android/community/a/r;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/r$2;->a:Lcom/xueqiu/android/community/model/LiveNews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 685
    iget-object v0, p0, Lcom/xueqiu/android/community/a/r$2;->a:Lcom/xueqiu/android/community/model/LiveNews;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/LiveNews;->getTarget()Ljava/lang/String;

    move-result-object v0

    .line 1197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 685
    if-nez v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/xueqiu/android/community/a/r$2;->a:Lcom/xueqiu/android/community/model/LiveNews;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/LiveNews;->getTarget()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/a/r$2;->b:Lcom/xueqiu/android/community/a/r;

    iget-object v1, v1, Lcom/xueqiu/android/community/a/r;->d:Lcom/xueqiu/android/community/a/o;

    .line 2089
    iget-object v1, v1, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 686
    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 688
    :cond_0
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x44c

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 689
    const-string v1, "status_id"

    iget-object v2, p0, Lcom/xueqiu/android/community/a/r$2;->a:Lcom/xueqiu/android/community/model/LiveNews;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/LiveNews;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 690
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 691
    return-void
.end method
