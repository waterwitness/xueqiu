.class final Lcom/xueqiu/android/message/ChatActivity$39;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/ChatActivity;->c(Lcom/snowballfinance/messageplatform/data/Menu;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/snowballfinance/messageplatform/data/MenuItem;

.field final synthetic b:Landroid/widget/ListPopupWindow;

.field final synthetic c:Lcom/xueqiu/android/message/ChatActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity;Lcom/snowballfinance/messageplatform/data/MenuItem;Landroid/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1190
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$39;->c:Lcom/xueqiu/android/message/ChatActivity;

    iput-object p2, p0, Lcom/xueqiu/android/message/ChatActivity$39;->a:Lcom/snowballfinance/messageplatform/data/MenuItem;

    iput-object p3, p0, Lcom/xueqiu/android/message/ChatActivity$39;->b:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 1193
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$39;->a:Lcom/snowballfinance/messageplatform/data/MenuItem;

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/MenuItem;->getSubItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snowballfinance/messageplatform/data/MenuItem;

    .line 1194
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$39;->c:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v1, v0}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;Lcom/snowballfinance/messageplatform/data/MenuItem;)V

    .line 1195
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$39;->b:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1196
    return-void
.end method
