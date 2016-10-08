.class final Lcom/xueqiu/android/community/c/o$14;
.super Landroid/content/BroadcastReceiver;
.source "PublicTimelineFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/c/o;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/o;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/o;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/xueqiu/android/community/c/o$14;->a:Lcom/xueqiu/android/community/c/o;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 155
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$14;->a:Lcom/xueqiu/android/community/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/o;->c(Lcom/xueqiu/android/community/c/o;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    const-string v0, "extra_search_text_exist"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 159
    const-string v1, "extra_search_text"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$14;->a:Lcom/xueqiu/android/community/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/o;->c(Lcom/xueqiu/android/community/c/o;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$14;->a:Lcom/xueqiu/android/community/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/o;->c(Lcom/xueqiu/android/community/c/o;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/c/o$14;->a:Lcom/xueqiu/android/community/c/o;

    const v2, 0x7f07034c

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/community/c/o;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
