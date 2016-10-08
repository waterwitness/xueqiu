.class final Lcom/xueqiu/android/message/ChatActivity$14;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/ChatActivity;->n()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/ChatActivity;

.field private b:I


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity;)V
    .locals 1

    .prologue
    .line 745
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$14;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 746
    const/4 v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/message/ChatActivity$14;->b:I

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .prologue
    .line 757
    iput p2, p0, Lcom/xueqiu/android/message/ChatActivity$14;->b:I

    .line 758
    add-int v0, p2, p3

    if-ne v0, p4, :cond_0

    .line 759
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$14;->a:Lcom/xueqiu/android/message/ChatActivity;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/ChatActivity;->a(Ljava/lang/Boolean;)V

    .line 761
    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    .line 750
    if-nez p2, :cond_0

    iget v0, p0, Lcom/xueqiu/android/message/ChatActivity$14;->b:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$14;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->h(Lcom/xueqiu/android/message/ChatActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$14;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->c(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setRefreshing(Z)V

    .line 753
    :cond_0
    return-void
.end method
