.class final Landroid/support/v7/internal/view/menu/f;
.super Landroid/widget/ImageButton;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/i;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/view/menu/c;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/c;Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 574
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/f;->a:Landroid/support/v7/internal/view/menu/c;

    .line 575
    const/4 v0, 0x0

    sget v1, Landroid/support/v7/b/c;->actionOverflowButtonStyle:I

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 577
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/view/menu/f;->setClickable(Z)V

    .line 578
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/view/menu/f;->setFocusable(Z)V

    .line 579
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/f;->setVisibility(I)V

    .line 580
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/view/menu/f;->setEnabled(Z)V

    .line 581
    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1

    .prologue
    .line 595
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 599
    const/4 v0, 0x0

    return v0
.end method

.method public final performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 585
    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    :goto_0
    return v1

    .line 589
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/f;->playSoundEffect(I)V

    .line 590
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/f;->a:Landroid/support/v7/internal/view/menu/c;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/c;->c()Z

    goto :goto_0
.end method
