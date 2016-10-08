.class final Lcom/xueqiu/android/message/ChatActivity$19;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 825
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$19;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 828
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$19;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->l(Lcom/xueqiu/android/message/ChatActivity;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/a/t;

    .line 829
    iget v1, v0, Lcom/xueqiu/android/message/a/t;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 830
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$19;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->m(Lcom/xueqiu/android/message/ChatActivity;)V

    .line 838
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$19;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->q(Lcom/xueqiu/android/message/ChatActivity;)V

    .line 839
    return-void

    .line 831
    :cond_1
    iget v1, v0, Lcom/xueqiu/android/message/a/t;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 832
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$19;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->n(Lcom/xueqiu/android/message/ChatActivity;)V

    goto :goto_0

    .line 833
    :cond_2
    iget v1, v0, Lcom/xueqiu/android/message/a/t;->a:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 834
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$19;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->o(Lcom/xueqiu/android/message/ChatActivity;)V

    goto :goto_0

    .line 835
    :cond_3
    iget v0, v0, Lcom/xueqiu/android/message/a/t;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 836
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$19;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->p(Lcom/xueqiu/android/message/ChatActivity;)V

    goto :goto_0
.end method
