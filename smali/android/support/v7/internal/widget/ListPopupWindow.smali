.class public Landroid/support/v7/internal/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"


# instance fields
.field private A:Z

.field public a:Landroid/widget/PopupWindow;

.field public b:Landroid/support/v7/internal/widget/v;

.field public c:I

.field d:I

.field e:I

.field f:I

.field public g:Landroid/view/View;

.field public h:Landroid/widget/AdapterView$OnItemClickListener;

.field private i:Landroid/content/Context;

.field private j:Landroid/widget/ListAdapter;

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Landroid/view/View;

.field private q:Landroid/database/DataSetObserver;

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final t:Landroid/support/v7/internal/widget/aa;

.field private final u:Landroid/support/v7/internal/widget/z;

.field private final v:Landroid/support/v7/internal/widget/y;

.field private final w:Landroid/support/v7/internal/widget/w;

.field private x:Ljava/lang/Runnable;

.field private y:Landroid/os/Handler;

.field private z:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 167
    const/4 v0, 0x0

    sget v1, Landroid/support/v7/b/c;->listPopupWindowStyle:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/internal/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v0, -0x2

    const/4 v1, 0x0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->k:I

    .line 72
    iput v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:I

    .line 77
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->n:Z

    .line 78
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Z

    .line 79
    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:I

    .line 82
    iput v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->f:I

    .line 93
    new-instance v0, Landroid/support/v7/internal/widget/aa;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/aa;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;B)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->t:Landroid/support/v7/internal/widget/aa;

    .line 94
    new-instance v0, Landroid/support/v7/internal/widget/z;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/z;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;B)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->u:Landroid/support/v7/internal/widget/z;

    .line 95
    new-instance v0, Landroid/support/v7/internal/widget/y;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/y;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;B)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->v:Landroid/support/v7/internal/widget/y;

    .line 96
    new-instance v0, Landroid/support/v7/internal/widget/w;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/w;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;B)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->w:Landroid/support/v7/internal/widget/w;

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->y:Landroid/os/Handler;

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;

    .line 190
    iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->i:Landroid/content/Context;

    .line 191
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:Landroid/widget/PopupWindow;

    .line 192
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 194
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 196
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/support/v7/internal/widget/v;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->b:Landroid/support/v7/internal/widget/v;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/support/v7/internal/widget/aa;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->t:Landroid/support/v7/internal/widget/aa;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->y:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 250
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->A:Z

    .line 251
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 252
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 412
    iput p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->l:I

    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Z

    .line 414
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 341
    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->q:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    .line 206
    new-instance v0, Landroid/support/v7/internal/widget/x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/x;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;B)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->q:Landroid/database/DataSetObserver;

    .line 210
    :cond_0
    :goto_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->j:Landroid/widget/ListAdapter;

    .line 211
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->j:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->q:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 215
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->b:Landroid/support/v7/internal/widget/v;

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->b:Landroid/support/v7/internal/widget/v;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->j:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/v;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 218
    :cond_2
    return-void

    .line 207
    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->j:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->j:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->q:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public final a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 614
    return-void
.end method

.method public b()V
    .locals 13

    .prologue
    const/high16 v12, -0x80000000

    const/4 v11, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 514
    .line 1913
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->b:Landroid/support/v7/internal/widget/v;

    if-nez v0, :cond_7

    .line 1914
    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->i:Landroid/content/Context;

    .line 1922
    new-instance v0, Landroid/support/v7/internal/widget/ListPopupWindow$1;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/ListPopupWindow$1;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->x:Ljava/lang/Runnable;

    .line 1932
    new-instance v3, Landroid/support/v7/internal/widget/v;

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->A:Z

    if-nez v0, :cond_6

    move v0, v1

    :goto_0
    invoke-direct {v3, v4, v0}, Landroid/support/v7/internal/widget/v;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->b:Landroid/support/v7/internal/widget/v;

    .line 1933
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1934
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->b:Landroid/support/v7/internal/widget/v;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/v;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1936
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->b:Landroid/support/v7/internal/widget/v;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->j:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/v;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1937
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->b:Landroid/support/v7/internal/widget/v;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->h:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/v;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1938
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->b:Landroid/support/v7/internal/widget/v;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/v;->setFocusable(Z)V

    .line 1939
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->b:Landroid/support/v7/internal/widget/v;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/v;->setFocusableInTouchMode(Z)V

    .line 1940
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->b:Landroid/support/v7/internal/widget/v;

    new-instance v3, Landroid/support/v7/internal/widget/ListPopupWindow$2;

    invoke-direct {v3, p0}, Landroid/support/v7/internal/widget/ListPopupWindow$2;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/v;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1956
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->b:Landroid/support/v7/internal/widget/v;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->v:Landroid/support/v7/internal/widget/y;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/v;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1958
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->s:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_1

    .line 1959
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->b:Landroid/support/v7/internal/widget/v;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->s:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/v;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1962
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->b:Landroid/support/v7/internal/widget/v;

    .line 1964
    iget-object v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->p:Landroid/view/View;

    .line 1965
    if-eqz v5, :cond_1f

    .line 1968
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1969
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1971
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v6, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1975
    iget v7, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->f:I

    packed-switch v7, :pswitch_data_0

    .line 1987
    const-string v0, "ListPopupWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Invalid hint position "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->f:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    :goto_1
    iget v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:I

    invoke-static {v0, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1995
    invoke-virtual {v5, v0, v2}, Landroid/view/View;->measure(II)V

    .line 1997
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1998
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v4

    .line 2004
    :goto_2
    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 2019
    :goto_3
    iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2020
    if-eqz v3, :cond_8

    .line 2021
    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2022
    iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    .line 2026
    iget-boolean v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Z

    if-nez v4, :cond_2

    .line 2027
    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    iput v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->l:I

    .line 2034
    :cond_2
    :goto_4
    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    move v4, v1

    .line 2367
    :goto_5
    iget-object v7, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->g:Landroid/view/View;

    .line 2036
    iget v8, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->l:I

    .line 3089
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 3090
    invoke-virtual {v7, v9}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3092
    const/4 v5, 0x2

    new-array v10, v5, [I

    .line 3094
    invoke-virtual {v7, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3096
    iget v5, v9, Landroid/graphics/Rect;->bottom:I

    .line 3097
    if-eqz v4, :cond_1d

    .line 3098
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 3099
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3101
    :goto_6
    aget v5, v10, v1

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v5, v7

    sub-int/2addr v4, v5

    sub-int/2addr v4, v8

    .line 3102
    aget v5, v10, v1

    iget v7, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v7

    add-int/2addr v5, v8

    .line 3105
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 3106
    iget-object v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 3107
    iget-object v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v7, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3108
    iget-object v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v7

    sub-int/2addr v4, v5

    .line 2039
    :cond_3
    iget-boolean v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->n:Z

    if-nez v5, :cond_4

    iget v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->k:I

    if-ne v5, v6, :cond_a

    .line 2040
    :cond_4
    add-int v0, v4, v3

    .line 519
    :goto_7
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->g()Z

    move-result v3

    .line 521
    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 522
    iget v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:I

    if-ne v4, v6, :cond_c

    move v4, v6

    .line 532
    :goto_8
    iget v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->k:I

    if-ne v5, v6, :cond_12

    .line 535
    if-eqz v3, :cond_e

    move v5, v0

    .line 536
    :goto_9
    if-eqz v3, :cond_10

    .line 537
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:Landroid/widget/PopupWindow;

    iget v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:I

    if-ne v3, v6, :cond_f

    :goto_a
    invoke-virtual {v0, v6, v2}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 552
    :goto_b
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:Landroid/widget/PopupWindow;

    iget-boolean v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Z

    if-nez v3, :cond_14

    iget-boolean v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->n:Z

    if-nez v3, :cond_14

    :goto_c
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 554
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:Landroid/widget/PopupWindow;

    .line 4367
    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->g:Landroid/view/View;

    .line 554
    iget v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->d:I

    iget v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->l:I

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 594
    :cond_5
    :goto_d
    return-void

    :cond_6
    move v0, v2

    .line 1932
    goto/16 :goto_0

    .line 1977
    :pswitch_0
    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1978
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 1982
    :pswitch_1
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1983
    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 2006
    :cond_7
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 2007
    iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->p:Landroid/view/View;

    .line 2008
    if-eqz v3, :cond_1e

    .line 2009
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2011
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v3

    goto/16 :goto_3

    .line 2030
    :cond_8
    iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    move v3, v2

    goto/16 :goto_4

    :cond_9
    move v4, v2

    .line 2034
    goto/16 :goto_5

    .line 2044
    :cond_a
    iget v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:I

    packed-switch v5, :pswitch_data_1

    .line 2058
    iget v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:I

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 2062
    :goto_e
    iget-object v7, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->b:Landroid/support/v7/internal/widget/v;

    sub-int/2addr v4, v0

    invoke-virtual {v7, v5, v4}, Landroid/support/v7/internal/widget/v;->a(II)I

    move-result v4

    .line 2066
    if-lez v4, :cond_b

    .line 2067
    add-int/2addr v0, v3

    .line 2070
    :cond_b
    add-int/2addr v0, v4

    goto/16 :goto_7

    .line 2046
    :pswitch_2
    iget-object v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->i:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    sub-int/2addr v5, v7

    invoke-static {v5, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_e

    .line 2052
    :pswitch_3
    iget-object v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->i:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    sub-int/2addr v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_e

    .line 526
    :cond_c
    iget v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:I

    if-ne v4, v11, :cond_d

    .line 3367
    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->g:Landroid/view/View;

    .line 527
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    goto/16 :goto_8

    .line 529
    :cond_d
    iget v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:I

    goto/16 :goto_8

    :cond_e
    move v5, v6

    .line 535
    goto/16 :goto_9

    :cond_f
    move v6, v2

    .line 537
    goto/16 :goto_a

    .line 541
    :cond_10
    iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:Landroid/widget/PopupWindow;

    iget v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:I

    if-ne v0, v6, :cond_11

    move v0, v6

    :goto_f
    invoke-virtual {v3, v0, v6}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    goto/16 :goto_b

    :cond_11
    move v0, v2

    goto :goto_f

    .line 546
    :cond_12
    iget v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->k:I

    if-ne v3, v11, :cond_13

    move v5, v0

    .line 547
    goto/16 :goto_b

    .line 549
    :cond_13
    iget v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->k:I

    goto/16 :goto_b

    :cond_14
    move v1, v2

    .line 552
    goto/16 :goto_c

    .line 557
    :cond_15
    iget v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:I

    if-ne v3, v6, :cond_18

    move v3, v6

    .line 567
    :goto_10
    iget v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->k:I

    if-ne v4, v6, :cond_1a

    move v0, v6

    .line 577
    :goto_11
    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3, v0}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 581
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:Landroid/widget/PopupWindow;

    iget-boolean v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Z

    if-nez v3, :cond_1c

    iget-boolean v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->n:Z

    if-nez v3, :cond_1c

    :goto_12
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 582
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->u:Landroid/support/v7/internal/widget/z;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 583
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:Landroid/widget/PopupWindow;

    .line 6367
    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->g:Landroid/view/View;

    .line 583
    iget v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->d:I

    iget v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->l:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 585
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->b:Landroid/support/v7/internal/widget/v;

    invoke-virtual {v0, v6}, Landroid/support/v7/internal/widget/v;->setSelection(I)V

    .line 587
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->A:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->b:Landroid/support/v7/internal/widget/v;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/v;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 588
    :cond_16
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->e()V

    .line 590
    :cond_17
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->A:Z

    if-nez v0, :cond_5

    .line 591
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->y:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->w:Landroid/support/v7/internal/widget/w;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_d

    .line 560
    :cond_18
    iget v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:I

    if-ne v3, v11, :cond_19

    .line 561
    iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:Landroid/widget/PopupWindow;

    .line 5367
    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->g:Landroid/view/View;

    .line 561
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    move v3, v2

    goto :goto_10

    .line 563
    :cond_19
    iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:Landroid/widget/PopupWindow;

    iget v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:I

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    move v3, v2

    goto :goto_10

    .line 570
    :cond_1a
    iget v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->k:I

    if-ne v4, v11, :cond_1b

    .line 571
    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v0, v2

    goto :goto_11

    .line 573
    :cond_1b
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:Landroid/widget/PopupWindow;

    iget v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->k:I

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v0, v2

    goto :goto_11

    :cond_1c
    move v1, v2

    .line 581
    goto :goto_12

    :cond_1d
    move v4, v5

    goto/16 :goto_6

    :cond_1e
    move v0, v2

    goto/16 :goto_3

    :cond_1f
    move-object v3, v0

    move v0, v2

    goto/16 :goto_2

    .line 1975
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 2044
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final b(I)V
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 441
    if-eqz v0, :cond_0

    .line 442
    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 443
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:I

    .line 447
    :goto_0
    return-void

    .line 1430
    :cond_0
    iput p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:I

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 600
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 6617
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->p:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 6618
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->p:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 6619
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 6620
    check-cast v0, Landroid/view/ViewGroup;

    .line 6621
    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 602
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 603
    iput-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->b:Landroid/support/v7/internal/widget/v;

    .line 604
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->y:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->t:Landroid/support/v7/internal/widget/aa;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 605
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 638
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 639
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 670
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->b:Landroid/support/v7/internal/widget/v;

    .line 671
    if-eqz v0, :cond_0

    .line 673
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/v;->a(Landroid/support/v7/internal/widget/v;Z)Z

    .line 675
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/v;->requestLayout()V

    .line 677
    :cond_0
    return-void
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
