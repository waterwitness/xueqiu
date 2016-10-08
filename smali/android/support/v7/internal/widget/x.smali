.class final Landroid/support/v7/internal/widget/x;
.super Landroid/database/DataSetObserver;
.source "ListPopupWindow.java"


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1355
    iput-object p1, p0, Landroid/support/v7/internal/widget/x;->a:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ListPopupWindow;B)V
    .locals 0

    .prologue
    .line 1355
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/x;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 1359
    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->a:Landroid/support/v7/internal/widget/ListPopupWindow;

    .line 1683
    iget-object v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 1359
    if-eqz v0, :cond_0

    .line 1361
    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->a:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->b()V

    .line 1363
    :cond_0
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .prologue
    .line 1367
    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->a:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->c()V

    .line 1368
    return-void
.end method
