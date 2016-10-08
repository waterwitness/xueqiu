.class final Lcom/xueqiu/android/community/c/m$2;
.super Ljava/lang/Object;
.source "PaidMentionFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/c/m;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/m;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/m;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/xueqiu/android/community/c/m$2;->a:Lcom/xueqiu/android/community/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m$2;->a:Lcom/xueqiu/android/community/c/m;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/c/m;->a(Z)V

    .line 128
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m$2;->a:Lcom/xueqiu/android/community/c/m;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/m;->b(Lcom/xueqiu/android/community/c/m;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/d/a;

    if-nez p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/d/a;->b(Z)V

    .line 129
    if-eqz p2, :cond_1

    .line 130
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m$2;->a:Lcom/xueqiu/android/community/c/m;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/m;->c(Lcom/xueqiu/android/community/c/m;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u5f85\u56de\u7b54"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m$2;->a:Lcom/xueqiu/android/community/c/m;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/m;->c(Lcom/xueqiu/android/community/c/m;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u5168\u90e8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
