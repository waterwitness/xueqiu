.class final Lcom/xueqiu/android/community/a/g$1;
.super Ljava/lang/Object;
.source "LiveNewsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/a/g;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/LiveNews;

.field final synthetic b:Lcom/xueqiu/android/community/a/g;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/g;Lcom/xueqiu/android/community/model/LiveNews;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/xueqiu/android/community/a/g$1;->b:Lcom/xueqiu/android/community/a/g;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/g$1;->a:Lcom/xueqiu/android/community/model/LiveNews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/xueqiu/android/community/a/g$1;->a:Lcom/xueqiu/android/community/model/LiveNews;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/LiveNews;->getTarget()Ljava/lang/String;

    move-result-object v0

    .line 1197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 100
    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/xueqiu/android/community/a/g$1;->a:Lcom/xueqiu/android/community/model/LiveNews;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/LiveNews;->getTarget()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/a/g$1;->b:Lcom/xueqiu/android/community/a/g;

    .line 2089
    iget-object v1, v1, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 101
    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 103
    :cond_0
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x76d

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 104
    const-string v1, "page_id"

    iget-object v2, p0, Lcom/xueqiu/android/community/a/g$1;->a:Lcom/xueqiu/android/community/model/LiveNews;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/LiveNews;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 105
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 106
    return-void
.end method
