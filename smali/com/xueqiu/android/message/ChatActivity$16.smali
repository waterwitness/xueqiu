.class final Lcom/xueqiu/android/message/ChatActivity$16;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 774
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$16;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 777
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$16;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->j(Lcom/xueqiu/android/message/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$16;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->k(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/common/widget/SnowBallEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->clearFocus()V

    .line 780
    :cond_0
    return-void
.end method
