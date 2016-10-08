.class final Lcom/xueqiu/android/message/ChatActivity$40;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/ChatActivity;->c(Lcom/snowballfinance/messageplatform/data/Menu;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ListPopupWindow;

.field final synthetic b:Lcom/xueqiu/android/message/ChatActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity;Landroid/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1202
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$40;->b:Lcom/xueqiu/android/message/ChatActivity;

    iput-object p2, p0, Lcom/xueqiu/android/message/ChatActivity$40;->a:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$40;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1206
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$40;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 1210
    :goto_0
    return-void

    .line 1208
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$40;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_0
.end method
