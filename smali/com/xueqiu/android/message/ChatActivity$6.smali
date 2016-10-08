.class final Lcom/xueqiu/android/message/ChatActivity$6;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/ChatActivity;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/message/model/Message;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/xueqiu/android/message/ChatActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity;III)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$6;->d:Lcom/xueqiu/android/message/ChatActivity;

    iput p2, p0, Lcom/xueqiu/android/message/ChatActivity$6;->a:I

    iput p3, p0, Lcom/xueqiu/android/message/ChatActivity$6;->b:I

    iput p4, p0, Lcom/xueqiu/android/message/ChatActivity$6;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 508
    check-cast p1, Ljava/util/List;

    .line 1511
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$6;->d:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->b(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/message/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$6;->d:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v1, p1}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 2176
    iput-object v1, v0, Lcom/xueqiu/android/message/a/d;->a:Ljava/util/List;

    .line 1512
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$6;->d:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->b(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/message/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/d;->notifyDataSetChanged()V

    .line 1513
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$6;->d:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/ChatActivity;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1514
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$6;->d:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->c(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget v1, p0, Lcom/xueqiu/android/message/ChatActivity$6;->a:I

    iget v2, p0, Lcom/xueqiu/android/message/ChatActivity$6;->b:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/xueqiu/android/message/ChatActivity$6;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1516
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$6;->d:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->d(Lcom/xueqiu/android/message/ChatActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 508
    return-void
.end method
