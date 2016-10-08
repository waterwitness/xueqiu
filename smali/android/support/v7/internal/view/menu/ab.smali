.class public Landroid/support/v7/internal/view/menu/ab;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/ad;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# static fields
.field static final b:I


# instance fields
.field private a:Landroid/content/Context;

.field public c:Landroid/support/v7/internal/view/menu/ae;

.field public d:Z

.field private e:Landroid/view/LayoutInflater;

.field private f:Landroid/support/v7/internal/widget/ListPopupWindow;

.field private g:Landroid/support/v7/internal/view/menu/p;

.field private h:I

.field private i:Landroid/view/View;

.field private j:Z

.field private k:Landroid/view/ViewTreeObserver;

.field private l:Landroid/support/v7/internal/view/menu/ac;

.field private m:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    sget v0, Landroid/support/v7/b/h;->abc_popup_menu_item_layout:I

    sput v0, Landroid/support/v7/internal/view/menu/ab;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/p;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/internal/view/menu/ab;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/p;Landroid/view/View;Z)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/p;Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ab;->a:Landroid/content/Context;

    .line 80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->e:Landroid/view/LayoutInflater;

    .line 81
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/ab;->g:Landroid/support/v7/internal/view/menu/p;

    .line 82
    iput-boolean p4, p0, Landroid/support/v7/internal/view/menu/ab;->j:Z

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Landroid/support/v7/b/e;->abc_config_prefDialogWidth:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/view/menu/ab;->h:I

    .line 88
    iput-object p3, p0, Landroid/support/v7/internal/view/menu/ab;->i:Landroid/view/View;

    .line 90
    invoke-virtual {p2, p0}, Landroid/support/v7/internal/view/menu/p;->a(Landroid/support/v7/internal/view/menu/ad;)V

    .line 91
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/view/menu/ab;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ab;->j:Z

    return v0
.end method

.method static synthetic b(Landroid/support/v7/internal/view/menu/ab;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->e:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/internal/view/menu/ab;)Landroid/support/v7/internal/view/menu/p;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->g:Landroid/support/v7/internal/view/menu/p;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ab;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/p;)V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/p;Z)V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->g:Landroid/support/v7/internal/view/menu/p;

    if-eq p1, v0, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ab;->c()V

    .line 267
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->c:Landroid/support/v7/internal/view/menu/ae;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->c:Landroid/support/v7/internal/view/menu/ae;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/view/menu/ae;->a(Landroid/support/v7/internal/view/menu/p;Z)V

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/aj;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 234
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/aj;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    new-instance v3, Landroid/support/v7/internal/view/menu/ab;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->a:Landroid/content/Context;

    iget-object v4, p0, Landroid/support/v7/internal/view/menu/ab;->i:Landroid/view/View;

    invoke-direct {v3, v0, p1, v4, v2}, Landroid/support/v7/internal/view/menu/ab;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/p;Landroid/view/View;Z)V

    .line 236
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->c:Landroid/support/v7/internal/view/menu/ae;

    .line 5229
    iput-object v0, v3, Landroid/support/v7/internal/view/menu/ab;->c:Landroid/support/v7/internal/view/menu/ae;

    .line 239
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/aj;->size()I

    move-result v4

    move v0, v2

    .line 240
    :goto_0
    if-ge v0, v4, :cond_3

    .line 241
    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/aj;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 242
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    move v0, v1

    .line 6098
    :goto_1
    iput-boolean v0, v3, Landroid/support/v7/internal/view/menu/ab;->d:Z

    .line 249
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/ab;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->c:Landroid/support/v7/internal/view/menu/ae;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->c:Landroid/support/v7/internal/view/menu/ae;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/view/menu/ae;->b(Landroid/support/v7/internal/view/menu/p;)Z

    .line 256
    :cond_0
    :goto_2
    return v1

    .line 240
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 256
    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public final b(Z)V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->l:Landroid/support/v7/internal/view/menu/ac;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->l:Landroid/support/v7/internal/view/menu/ac;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ac;->notifyDataSetChanged()V

    .line 225
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 13

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 108
    new-instance v0, Landroid/support/v7/internal/widget/ListPopupWindow;

    iget-object v4, p0, Landroid/support/v7/internal/view/menu/ab;->a:Landroid/content/Context;

    sget v5, Landroid/support/v7/b/c;->popupMenuStyle:I

    invoke-direct {v0, v4, v3, v5}, Landroid/support/v7/internal/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->f:Landroid/support/v7/internal/widget/ListPopupWindow;

    .line 109
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->f:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 110
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->f:Landroid/support/v7/internal/widget/ListPopupWindow;

    .line 1472
    iput-object p0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->h:Landroid/widget/AdapterView$OnItemClickListener;

    .line 112
    new-instance v0, Landroid/support/v7/internal/view/menu/ac;

    iget-object v4, p0, Landroid/support/v7/internal/view/menu/ab;->g:Landroid/support/v7/internal/view/menu/p;

    invoke-direct {v0, p0, v4}, Landroid/support/v7/internal/view/menu/ac;-><init>(Landroid/support/v7/internal/view/menu/ab;Landroid/support/v7/internal/view/menu/p;)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->l:Landroid/support/v7/internal/view/menu/ac;

    .line 113
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->f:Landroid/support/v7/internal/widget/ListPopupWindow;

    iget-object v4, p0, Landroid/support/v7/internal/view/menu/ab;->l:Landroid/support/v7/internal/view/menu/ac;

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/ListPopupWindow;->a(Landroid/widget/ListAdapter;)V

    .line 114
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->f:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->a()V

    .line 116
    iget-object v4, p0, Landroid/support/v7/internal/view/menu/ab;->i:Landroid/view/View;

    .line 117
    if-eqz v4, :cond_3

    .line 118
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->k:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_2

    move v0, v1

    .line 119
    :goto_0
    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/internal/view/menu/ab;->k:Landroid/view/ViewTreeObserver;

    .line 120
    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->k:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 123
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->f:Landroid/support/v7/internal/widget/ListPopupWindow;

    .line 2377
    iput-object v4, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->g:Landroid/view/View;

    .line 128
    iget-object v7, p0, Landroid/support/v7/internal/view/menu/ab;->f:Landroid/support/v7/internal/widget/ListPopupWindow;

    iget-object v8, p0, Landroid/support/v7/internal/view/menu/ab;->l:Landroid/support/v7/internal/view/menu/ac;

    .line 3176
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 3178
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 3180
    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v11

    move v5, v2

    move-object v4, v3

    move v6, v2

    .line 3181
    :goto_1
    if-ge v5, v11, :cond_4

    .line 3182
    invoke-interface {v8, v5}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 3183
    if-eq v0, v2, :cond_5

    move-object v2, v3

    .line 3187
    :goto_2
    iget-object v4, p0, Landroid/support/v7/internal/view/menu/ab;->m:Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    .line 3188
    new-instance v4, Landroid/widget/FrameLayout;

    iget-object v12, p0, Landroid/support/v7/internal/view/menu/ab;->a:Landroid/content/Context;

    invoke-direct {v4, v12}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/support/v7/internal/view/menu/ab;->m:Landroid/view/ViewGroup;

    .line 3190
    :cond_1
    iget-object v4, p0, Landroid/support/v7/internal/view/menu/ab;->m:Landroid/view/ViewGroup;

    invoke-interface {v8, v5, v2, v4}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 3191
    invoke-virtual {v4, v9, v10}, Landroid/view/View;->measure(II)V

    .line 3192
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 3181
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 118
    goto :goto_0

    :cond_3
    move v1, v2

    .line 132
    :goto_3
    return v1

    .line 128
    :cond_4
    iget v0, p0, Landroid/support/v7/internal/view/menu/ab;->h:I

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->b(I)V

    .line 129
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->f:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->d()V

    .line 130
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->f:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->b()V

    .line 131
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->f:Landroid/support/v7/internal/widget/ListPopupWindow;

    .line 3765
    iget-object v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->b:Landroid/support/v7/internal/widget/v;

    .line 131
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_3

    :cond_5
    move v0, v2

    move-object v2, v4

    goto :goto_2
.end method

.method public final b(Landroid/support/v7/internal/view/menu/t;)Z
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ab;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->f:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->c()V

    .line 139
    :cond_0
    return-void
.end method

.method public final c(Landroid/support/v7/internal/view/menu/t;)Z
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->f:Landroid/support/v7/internal/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->f:Landroid/support/v7/internal/widget/ListPopupWindow;

    .line 4683
    iget-object v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 154
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    iput-object v1, p0, Landroid/support/v7/internal/view/menu/ab;->f:Landroid/support/v7/internal/widget/ListPopupWindow;

    .line 143
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->g:Landroid/support/v7/internal/view/menu/p;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/p;->close()V

    .line 144
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->k:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->k:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->k:Landroid/view/ViewTreeObserver;

    .line 148
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->k:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 149
    iput-object v1, p0, Landroid/support/v7/internal/view/menu/ab;->k:Landroid/view/ViewTreeObserver;

    .line 151
    :cond_1
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ab;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->i:Landroid/view/View;

    .line 201
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 202
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ab;->c()V

    .line 208
    :cond_1
    :goto_0
    return-void

    .line 203
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ab;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->f:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->b()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->l:Landroid/support/v7/internal/view/menu/ac;

    .line 160
    invoke-static {v0}, Landroid/support/v7/internal/view/menu/ac;->a(Landroid/support/v7/internal/view/menu/ac;)Landroid/support/v7/internal/view/menu/p;

    move-result-object v1

    invoke-virtual {v0, p3}, Landroid/support/v7/internal/view/menu/ac;->a(I)Landroid/support/v7/internal/view/menu/t;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/internal/view/menu/p;->a(Landroid/view/MenuItem;I)Z

    .line 161
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 164
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    .line 165
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ab;->c()V

    .line 168
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
