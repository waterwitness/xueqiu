.class final Lcom/xueqiu/android/community/WriteStatusActivity$16;
.super Ljava/lang/Object;
.source "WriteStatusActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/WriteStatusActivity;->k()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/WriteStatusActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 0

    .prologue
    .line 907
    iput-object p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$16;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 921
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 922
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 924
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 925
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$16;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->b(Lcom/xueqiu/android/community/WriteStatusActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 927
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$16;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->C(Lcom/xueqiu/android/community/WriteStatusActivity;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$16;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->C(Lcom/xueqiu/android/community/WriteStatusActivity;)I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 928
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$16;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1, v0, v3, v3}, Lcom/xueqiu/android/community/WriteStatusActivity;->a(Lcom/xueqiu/android/community/WriteStatusActivity;Ljava/lang/String;ZZ)V

    .line 937
    :cond_1
    :goto_0
    return-void

    .line 929
    :cond_2
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$16;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->C(Lcom/xueqiu/android/community/WriteStatusActivity;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 930
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$16;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1, v0, v3, v4}, Lcom/xueqiu/android/community/WriteStatusActivity;->a(Lcom/xueqiu/android/community/WriteStatusActivity;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 933
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$16;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->b(Lcom/xueqiu/android/community/WriteStatusActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 934
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$16;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->G(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 935
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$16;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->H(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 917
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 912
    return-void
.end method
