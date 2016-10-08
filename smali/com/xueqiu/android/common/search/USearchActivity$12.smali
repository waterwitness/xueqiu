.class final Lcom/xueqiu/android/common/search/USearchActivity$12;
.super Ljava/lang/Object;
.source "USearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/search/USearchActivity;->a(ILandroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xueqiu/android/common/search/USearchActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/search/USearchActivity;I)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lcom/xueqiu/android/common/search/USearchActivity$12;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    iput p2, p0, Lcom/xueqiu/android/common/search/USearchActivity$12;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 473
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/common/search/USearchActivity$12;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    const-class v2, Lcom/xueqiu/android/common/search/SearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 474
    const-string v1, "search_word"

    iget-object v2, p0, Lcom/xueqiu/android/common/search/USearchActivity$12;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-virtual {v2}, Lcom/xueqiu/android/common/search/USearchActivity;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    const-string v1, "search_type"

    iget v2, p0, Lcom/xueqiu/android/common/search/USearchActivity$12;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 476
    iget-object v1, p0, Lcom/xueqiu/android/common/search/USearchActivity$12;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-virtual {v1, v0, v3}, Lcom/xueqiu/android/common/search/USearchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 478
    iget v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$12;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 479
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$12;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    const v1, 0x7f07050d

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/b;->a(Landroid/content/Context;I)V

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    iget v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$12;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 481
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$12;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    const v1, 0x7f07050c

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/b;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 482
    :cond_2
    iget v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$12;->a:I

    if-ne v0, v3, :cond_3

    .line 483
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$12;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    const v1, 0x7f07050b

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/b;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 484
    :cond_3
    iget v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$12;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 485
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$12;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    const v1, 0x7f07050a

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/b;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method
