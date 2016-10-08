.class final Lcom/xueqiu/android/message/ChatActivity$17;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/ChatActivity;->n()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/ChatActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity;)V
    .locals 0

    .prologue
    .line 784
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$17;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 787
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$17;->a:Lcom/xueqiu/android/message/ChatActivity;

    .line 2235
    iget-object v0, v1, Lcom/xueqiu/android/message/ChatActivity;->r:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/xueqiu/android/message/ChatActivity;->j:Lcom/xueqiu/android/message/a/d;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/xueqiu/android/message/ChatActivity;->j:Lcom/xueqiu/android/message/a/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/d;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2236
    iget-object v0, v1, Lcom/xueqiu/android/message/ChatActivity;->r:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, v1, Lcom/xueqiu/android/message/ChatActivity;->j:Lcom/xueqiu/android/message/a/d;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/a/d;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 788
    :cond_0
    return-void
.end method
