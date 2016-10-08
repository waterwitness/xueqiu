.class final Lcom/xueqiu/android/community/e;
.super Lcom/xueqiu/android/common/a/d;
.source "FindPeopleActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/d",
        "<",
        "Lcom/xueqiu/android/community/model/IndustryOfUser;",
        ">;"
    }
.end annotation


# instance fields
.field public e:I

.field final synthetic f:Lcom/xueqiu/android/community/d;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/community/d;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 403
    iput-object p1, p0, Lcom/xueqiu/android/community/e;->f:Lcom/xueqiu/android/community/d;

    .line 404
    const v0, 0x7f030079

    invoke-direct {p0, p2, v0}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;I)V

    .line 401
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/community/e;->e:I

    .line 405
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 410
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/a/d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 417
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 420
    const v0, 0x7f0e0213

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 421
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 425
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/e;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/IndustryOfUser;

    .line 426
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/IndustryOfUser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget v0, p0, Lcom/xueqiu/android/community/e;->e:I

    if-ne v0, p1, :cond_1

    .line 430
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 431
    iget-object v0, p0, Lcom/xueqiu/android/community/e;->f:Lcom/xueqiu/android/community/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/d;->h()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0d011e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 437
    :goto_1
    return-object v2

    .line 423
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    goto :goto_0

    .line 433
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 434
    iget-object v0, p0, Lcom/xueqiu/android/community/e;->f:Lcom/xueqiu/android/community/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/d;->h()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0d0097

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method
