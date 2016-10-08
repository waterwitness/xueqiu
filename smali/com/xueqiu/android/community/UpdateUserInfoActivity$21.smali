.class final Lcom/xueqiu/android/community/UpdateUserInfoActivity$21;
.super Ljava/lang/Object;
.source "UpdateUserInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/UpdateUserInfoActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$21;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 439
    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$21;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$21;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    const v2, 0x7f0e01f8

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->a(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 441
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$21;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->h(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->b(Ljava/lang/String;)Z

    move-result v0

    .line 442
    if-eqz v0, :cond_2

    .line 443
    const-string v2, "m"

    .line 444
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$21;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    const v1, 0x7f07017a

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$21;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->i(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    const-string v2, "f"

    .line 450
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$21;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$21;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    const v3, 0x7f0e0306

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->b(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 451
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$21;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$21;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->h(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$21;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v3}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->j(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$21;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v4}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->k(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$21;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v5}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->l(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->a(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :goto_1
    return-void

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$21;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    const v1, 0x7f07017c

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$21;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->i(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    const-string v2, "n"

    goto :goto_0

    .line 453
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$21;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    const v1, 0x7f070346

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
