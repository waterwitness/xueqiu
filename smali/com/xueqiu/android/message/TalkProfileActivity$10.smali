.class final Lcom/xueqiu/android/message/TalkProfileActivity$10;
.super Ljava/lang/Object;
.source "TalkProfileActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/TalkProfileActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/TalkProfileActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/TalkProfileActivity;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$10;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity$10;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->a(Lcom/xueqiu/android/message/TalkProfileActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 188
    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$10;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/TalkProfileActivity;->b(Lcom/xueqiu/android/message/TalkProfileActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 189
    iget-object v2, p0, Lcom/xueqiu/android/message/TalkProfileActivity$10;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-static {v2}, Lcom/xueqiu/android/message/TalkProfileActivity;->c(Lcom/xueqiu/android/message/TalkProfileActivity;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/message/model/Talk;->setNotify(Z)V

    .line 190
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity$10;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->c(Lcom/xueqiu/android/message/TalkProfileActivity;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setTop(Z)V

    .line 195
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity$10;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->d(Lcom/xueqiu/android/message/TalkProfileActivity;)Lcom/xueqiu/android/message/client/MessageService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity$10;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->d(Lcom/xueqiu/android/message/TalkProfileActivity;)Lcom/xueqiu/android/message/client/MessageService;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$10;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/TalkProfileActivity;->c(Lcom/xueqiu/android/message/TalkProfileActivity;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->toMessageSession()Lcom/snowballfinance/messageplatform/data/MessageSession;

    move-result-object v1

    invoke-static {v1}, Lcom/snowballfinance/messageplatform/a/y;->a(Lcom/snowballfinance/messageplatform/data/MessageSession;)Lcom/snowballfinance/messageplatform/a/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/client/MessageService;->a(Lcom/snowballfinance/messageplatform/a/y;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/TalkProfileActivity$10$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/TalkProfileActivity$10$1;-><init>(Lcom/xueqiu/android/message/TalkProfileActivity$10;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    .line 207
    :goto_1
    return-void

    .line 187
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 205
    :cond_1
    const v0, 0x7f0702fa

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto :goto_1
.end method
