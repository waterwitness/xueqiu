.class final Lcom/xueqiu/android/message/TalkSearchActivity$2;
.super Ljava/lang/Object;
.source "TalkSearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/TalkSearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/TalkSearchActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/TalkSearchActivity;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/xueqiu/android/message/TalkSearchActivity$2;->a:Lcom/xueqiu/android/message/TalkSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 125
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity$2;->a:Lcom/xueqiu/android/message/TalkSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/TalkSearchActivity;->a(Lcom/xueqiu/android/message/TalkSearchActivity;)Lcom/xueqiu/android/message/a/u;

    move-result-object v0

    if-nez v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity$2;->a:Lcom/xueqiu/android/message/TalkSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/TalkSearchActivity;->a(Lcom/xueqiu/android/message/TalkSearchActivity;)Lcom/xueqiu/android/message/a/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/u;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity$2;->a:Lcom/xueqiu/android/message/TalkSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/TalkSearchActivity;->b(Lcom/xueqiu/android/message/TalkSearchActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity$2;->a:Lcom/xueqiu/android/message/TalkSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/TalkSearchActivity;->a(Lcom/xueqiu/android/message/TalkSearchActivity;)Lcom/xueqiu/android/message/a/u;

    move-result-object v0

    .line 1164
    iget-object v0, v0, Lcom/xueqiu/android/message/a/u;->a:Ljava/util/List;

    .line 129
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 130
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity$2;->a:Lcom/xueqiu/android/message/TalkSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/TalkSearchActivity;->a(Lcom/xueqiu/android/message/TalkSearchActivity;)Lcom/xueqiu/android/message/a/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/u;->notifyDataSetChanged()V

    .line 131
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity$2;->a:Lcom/xueqiu/android/message/TalkSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/TalkSearchActivity;->c(Lcom/xueqiu/android/message/TalkSearchActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity$2;->a:Lcom/xueqiu/android/message/TalkSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/TalkSearchActivity;->d(Lcom/xueqiu/android/message/TalkSearchActivity;)Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setVisibility(I)V

    goto :goto_0

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity$2;->a:Lcom/xueqiu/android/message/TalkSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/TalkSearchActivity;->b(Lcom/xueqiu/android/message/TalkSearchActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity$2;->a:Lcom/xueqiu/android/message/TalkSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/TalkSearchActivity;->c(Lcom/xueqiu/android/message/TalkSearchActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity$2;->a:Lcom/xueqiu/android/message/TalkSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/TalkSearchActivity;->d(Lcom/xueqiu/android/message/TalkSearchActivity;)Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    .prologue
    .line 110
    iget-object v1, p0, Lcom/xueqiu/android/message/TalkSearchActivity$2;->a:Lcom/xueqiu/android/message/TalkSearchActivity;

    monitor-enter v1

    .line 111
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 113
    sget-object v2, Lcom/xueqiu/android/base/util/ag;->c:Lrx/h;

    new-instance v3, Lcom/xueqiu/android/message/TalkSearchActivity$2$1;

    invoke-direct {v3, p0, v0}, Lcom/xueqiu/android/message/TalkSearchActivity$2$1;-><init>(Lcom/xueqiu/android/message/TalkSearchActivity$2;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lrx/h;->a(Lrx/c/a;)Lrx/j;

    .line 120
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
