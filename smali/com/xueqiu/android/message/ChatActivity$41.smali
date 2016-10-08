.class final Lcom/xueqiu/android/message/ChatActivity$41;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/ChatActivity;->c(Lcom/snowballfinance/messageplatform/data/Menu;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/snowballfinance/messageplatform/data/MenuItem;

.field final synthetic b:Lcom/xueqiu/android/message/ChatActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity;Lcom/snowballfinance/messageplatform/data/MenuItem;)V
    .locals 0

    .prologue
    .line 1221
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$41;->b:Lcom/xueqiu/android/message/ChatActivity;

    iput-object p2, p0, Lcom/xueqiu/android/message/ChatActivity$41;->a:Lcom/snowballfinance/messageplatform/data/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$41;->b:Lcom/xueqiu/android/message/ChatActivity;

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$41;->a:Lcom/snowballfinance/messageplatform/data/MenuItem;

    invoke-static {v0, v1}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;Lcom/snowballfinance/messageplatform/data/MenuItem;)V

    .line 1225
    return-void
.end method
