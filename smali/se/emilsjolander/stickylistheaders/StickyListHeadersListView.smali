.class public Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;
.super Landroid/widget/FrameLayout;
.source "StickyListHeadersListView.java"


# instance fields
.field private a:Lse/emilsjolander/stickylistheaders/u;

.field private b:Landroid/view/View;

.field private c:Ljava/lang/Long;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/Integer;

.field private f:Landroid/widget/AbsListView$OnScrollListener;

.field private g:Lse/emilsjolander/stickylistheaders/a;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:F

.field private q:Z

.field private r:F

.field private s:Lse/emilsjolander/stickylistheaders/o;

.field private t:Lse/emilsjolander/stickylistheaders/q;

.field private u:Lse/emilsjolander/stickylistheaders/p;

.field private v:Lse/emilsjolander/stickylistheaders/m;

.field private w:Landroid/graphics/drawable/Drawable;

.field private x:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/16 v7, 0xb

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 124
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    iput-boolean v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->h:Z

    .line 93
    iput-boolean v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->i:Z

    .line 94
    iput-boolean v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->j:Z

    .line 95
    iput v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->k:I

    .line 96
    iput v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->l:I

    .line 97
    iput v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->m:I

    .line 98
    iput v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->n:I

    .line 99
    iput v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->o:I

    .line 126
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->r:F

    .line 129
    new-instance v2, Lse/emilsjolander/stickylistheaders/u;

    invoke-direct {v2, p1}, Lse/emilsjolander/stickylistheaders/u;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    .line 132
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v2}, Lse/emilsjolander/stickylistheaders/u;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->w:Landroid/graphics/drawable/Drawable;

    .line 133
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v2}, Lse/emilsjolander/stickylistheaders/u;->getDividerHeight()I

    move-result v2

    iput v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->x:I

    .line 134
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lse/emilsjolander/stickylistheaders/u;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 135
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v2, v1}, Lse/emilsjolander/stickylistheaders/u;->setDividerHeight(I)V

    .line 137
    if-eqz p2, :cond_5

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lse/emilsjolander/stickylistheaders/j;->StickyListHeadersListView:[I

    invoke-virtual {v2, p2, v3, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 142
    :try_start_0
    sget v2, Lse/emilsjolander/stickylistheaders/j;->StickyListHeadersListView_android_padding:I

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 143
    sget v4, Lse/emilsjolander/stickylistheaders/j;->StickyListHeadersListView_android_paddingLeft:I

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->l:I

    .line 144
    sget v4, Lse/emilsjolander/stickylistheaders/j;->StickyListHeadersListView_android_paddingTop:I

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->m:I

    .line 145
    sget v4, Lse/emilsjolander/stickylistheaders/j;->StickyListHeadersListView_android_paddingRight:I

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->n:I

    .line 146
    sget v4, Lse/emilsjolander/stickylistheaders/j;->StickyListHeadersListView_android_paddingBottom:I

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->o:I

    .line 148
    iget v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->l:I

    iget v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->m:I

    iget v5, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->n:I

    iget v6, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->o:I

    invoke-virtual {p0, v2, v4, v5, v6}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setPadding(IIII)V

    .line 152
    sget v2, Lse/emilsjolander/stickylistheaders/j;->StickyListHeadersListView_android_clipToPadding:I

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->i:Z

    .line 153
    const/4 v2, 0x1

    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 154
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    iget-boolean v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->i:Z

    invoke-virtual {v2, v4}, Lse/emilsjolander/stickylistheaders/u;->setClipToPadding(Z)V

    .line 157
    sget v2, Lse/emilsjolander/stickylistheaders/j;->StickyListHeadersListView_android_scrollbars:I

    const/16 v4, 0x200

    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 158
    iget-object v5, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    and-int/lit16 v2, v4, 0x200

    if-eqz v2, :cond_6

    move v2, v0

    :goto_0
    invoke-virtual {v5, v2}, Lse/emilsjolander/stickylistheaders/u;->setVerticalScrollBarEnabled(Z)V

    .line 159
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_7

    :goto_1
    invoke-virtual {v2, v0}, Lse/emilsjolander/stickylistheaders/u;->setHorizontalScrollBarEnabled(Z)V

    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    .line 163
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    sget v2, Lse/emilsjolander/stickylistheaders/j;->StickyListHeadersListView_android_overScrollMode:I

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/u;->setOverScrollMode(I)V

    .line 167
    :cond_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    sget v2, Lse/emilsjolander/stickylistheaders/j;->StickyListHeadersListView_android_fadingEdgeLength:I

    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    .line 168
    invoke-virtual {v4}, Lse/emilsjolander/stickylistheaders/u;->getVerticalFadingEdgeLength()I

    move-result v4

    .line 167
    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/u;->setFadingEdgeLength(I)V

    .line 169
    sget v0, Lse/emilsjolander/stickylistheaders/j;->StickyListHeadersListView_android_requiresFadingEdge:I

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 170
    const/16 v2, 0x1000

    if-ne v0, v2, :cond_8

    .line 171
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/u;->setVerticalFadingEdgeEnabled(Z)V

    .line 172
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/u;->setHorizontalFadingEdgeEnabled(Z)V

    .line 180
    :goto_2
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    sget v2, Lse/emilsjolander/stickylistheaders/j;->StickyListHeadersListView_android_cacheColorHint:I

    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    .line 181
    invoke-virtual {v4}, Lse/emilsjolander/stickylistheaders/u;->getCacheColorHint()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 180
    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/u;->setCacheColorHint(I)V

    .line 182
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_1

    .line 183
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    sget v2, Lse/emilsjolander/stickylistheaders/j;->StickyListHeadersListView_android_choiceMode:I

    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    .line 184
    invoke-virtual {v4}, Lse/emilsjolander/stickylistheaders/u;->getChoiceMode()I

    move-result v4

    .line 183
    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/u;->setChoiceMode(I)V

    .line 186
    :cond_1
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    sget v2, Lse/emilsjolander/stickylistheaders/j;->StickyListHeadersListView_android_drawSelectorOnTop:I

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/u;->setDrawSelectorOnTop(Z)V

    .line 187
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    sget v2, Lse/emilsjolander/stickylistheaders/j;->StickyListHeadersListView_android_fastScrollEnabled:I

    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    .line 188
    invoke-virtual {v4}, Lse/emilsjolander/stickylistheaders/u;->isFastScrollEnabled()Z

    move-result v4

    .line 187
    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/u;->setFastScrollEnabled(Z)V

    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_2

    .line 190
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    sget v2, Lse/emilsjolander/stickylistheaders/j;->StickyListHeadersListView_android_fastScrollAlwaysVisible:I

    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    .line 192
    invoke-virtual {v4}, Lse/emilsjolander/stickylistheaders/u;->isFastScrollAlwaysVisible()Z

    move-result v4

    .line 190
    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/u;->setFastScrollAlwaysVisible(Z)V

    .line 195
    :cond_2
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    sget v2, Lse/emilsjolander/stickylistheaders/j;->StickyListHeadersListView_android_scrollbarStyle:I

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/u;->setScrollBarStyle(I)V

    .line 197
    sget v0, Lse/emilsjolander/stickylistheaders/j;->StickyListHeadersListView_android_listSelector:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 198
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    sget v2, Lse/emilsjolander/stickylistheaders/j;->StickyListHeadersListView_android_listSelector:I

    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/u;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 201
    :cond_3
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    sget v2, Lse/emilsjolander/stickylistheaders/j;->StickyListHeadersListView_android_scrollingCache:I

    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    .line 202
    invoke-virtual {v4}, Lse/emilsjolander/stickylistheaders/u;->isScrollingCacheEnabled()Z

    move-result v4

    .line 201
    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/u;->setScrollingCacheEnabled(Z)V

    .line 204
    sget v0, Lse/emilsjolander/stickylistheaders/j;->StickyListHeadersListView_android_divider:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 205
    sget v0, Lse/emilsjolander/stickylistheaders/j;->StickyListHeadersListView_android_divider:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->w:Landroid/graphics/drawable/Drawable;

    .line 208
    :cond_4
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    sget v2, Lse/emilsjolander/stickylistheaders/j;->StickyListHeadersListView_android_stackFromBottom:I

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/u;->setStackFromBottom(Z)V

    .line 210
    sget v0, Lse/emilsjolander/stickylistheaders/j;->StickyListHeadersListView_android_dividerHeight:I

    iget v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->x:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->x:I

    .line 213
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    sget v2, Lse/emilsjolander/stickylistheaders/j;->StickyListHeadersListView_android_transcriptMode:I

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/u;->setTranscriptMode(I)V

    .line 217
    sget v0, Lse/emilsjolander/stickylistheaders/j;->StickyListHeadersListView_hasStickyHeaders:I

    const/4 v2, 0x1

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->h:Z

    .line 218
    sget v0, Lse/emilsjolander/stickylistheaders/j;->StickyListHeadersListView_isDrawingListUnderStickyHeader:I

    const/4 v2, 0x1

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 227
    :cond_5
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    new-instance v2, Lse/emilsjolander/stickylistheaders/s;

    invoke-direct {v2, p0, v1}, Lse/emilsjolander/stickylistheaders/s;-><init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;B)V

    .line 2111
    iput-object v2, v0, Lse/emilsjolander/stickylistheaders/u;->a:Lse/emilsjolander/stickylistheaders/v;

    .line 228
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    new-instance v2, Lse/emilsjolander/stickylistheaders/r;

    invoke-direct {v2, p0, v1}, Lse/emilsjolander/stickylistheaders/r;-><init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;B)V

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/u;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 230
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->addView(Landroid/view/View;)V

    .line 231
    return-void

    :cond_6
    move v2, v1

    .line 158
    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 159
    goto/16 :goto_1

    .line 173
    :cond_8
    const/16 v2, 0x2000

    if-ne v0, v2, :cond_9

    .line 174
    :try_start_1
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/u;->setVerticalFadingEdgeEnabled(Z)V

    .line 175
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/u;->setHorizontalFadingEdgeEnabled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 222
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 177
    :cond_9
    :try_start_2
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/u;->setVerticalFadingEdgeEnabled(Z)V

    .line 178
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/u;->setHorizontalFadingEdgeEnabled(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method static synthetic a(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 288
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->removeView(Landroid/view/View;)V

    .line 290
    iput-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    .line 291
    iput-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->c:Ljava/lang/Long;

    .line 292
    iput-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->d:Ljava/lang/Integer;

    .line 293
    iput-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->e:Ljava/lang/Integer;

    .line 296
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    .line 2150
    const/4 v1, 0x0

    iput v1, v0, Lse/emilsjolander/stickylistheaders/u;->c:I

    .line 297
    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b()V

    .line 299
    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 302
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    if-nez v0, :cond_1

    move v1, v3

    .line 303
    :goto_0
    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->h:Z

    if-nez v0, :cond_2

    .line 331
    :cond_0
    :goto_1
    return-void

    .line 302
    :cond_1
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/a;->getCount()I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 307
    :cond_2
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/u;->getHeaderViewsCount()I

    move-result v0

    .line 308
    sub-int v0, p1, v0

    .line 309
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v2}, Lse/emilsjolander/stickylistheaders/u;->getChildCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 310
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v2, v3}, Lse/emilsjolander/stickylistheaders/u;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 311
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->c()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 312
    add-int/lit8 v0, v0, 0x1

    .line 319
    :cond_3
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v2}, Lse/emilsjolander/stickylistheaders/u;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_6

    move v5, v4

    .line 320
    :goto_2
    if-eqz v5, :cond_7

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    .line 321
    invoke-virtual {v2}, Lse/emilsjolander/stickylistheaders/u;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    .line 322
    invoke-virtual {v2, v3}, Lse/emilsjolander/stickylistheaders/u;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->c()I

    move-result v6

    if-lt v2, v6, :cond_7

    move v2, v4

    .line 323
    :goto_3
    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_4

    if-gez v0, :cond_8

    :cond_4
    move v1, v4

    .line 325
    :goto_4
    if-eqz v5, :cond_5

    if-nez v1, :cond_5

    if-eqz v2, :cond_9

    .line 326
    :cond_5
    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a()V

    goto :goto_1

    :cond_6
    move v5, v3

    .line 319
    goto :goto_2

    :cond_7
    move v2, v3

    .line 322
    goto :goto_3

    :cond_8
    move v1, v3

    .line 323
    goto :goto_4

    .line 2336
    :cond_9
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_11

    .line 2337
    :cond_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->d:Ljava/lang/Integer;

    .line 2338
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    invoke-virtual {v1, v0}, Lse/emilsjolander/stickylistheaders/a;->a(I)J

    move-result-wide v0

    .line 2339
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->c:Ljava/lang/Long;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v2, v6, v0

    if-eqz v2, :cond_11

    .line 2340
    :cond_b
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->c:Ljava/lang/Long;

    .line 2341
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    invoke-virtual {v0, v1, v2, p0}, Lse/emilsjolander/stickylistheaders/a;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2342
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    if-eq v1, v0, :cond_f

    .line 2343
    if-nez v0, :cond_c

    .line 2344
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "header may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2386
    :cond_c
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    if-eqz v1, :cond_d

    .line 2387
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    invoke-virtual {p0, v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->removeView(Landroid/view/View;)V

    .line 2389
    :cond_d
    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    .line 2390
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->addView(Landroid/view/View;)V

    .line 2391
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->s:Lse/emilsjolander/stickylistheaders/o;

    if-eqz v0, :cond_e

    .line 2392
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    new-instance v1, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$1;

    invoke-direct {v1, p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$1;-><init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2401
    :cond_e
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 2348
    :cond_f
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    invoke-static {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a(Landroid/view/View;)V

    .line 2349
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    invoke-direct {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b(Landroid/view/View;)V

    .line 2350
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->u:Lse/emilsjolander/stickylistheaders/p;

    if-eqz v0, :cond_10

    .line 2351
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->c:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 2356
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->e:Ljava/lang/Integer;

    .line 2360
    :cond_11
    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->c()I

    move-result v6

    move v2, v3

    .line 2365
    :goto_5
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/u;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_17

    .line 2366
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/u;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2367
    instance-of v0, v1, Lse/emilsjolander/stickylistheaders/t;

    if-eqz v0, :cond_14

    move-object v0, v1

    check-cast v0, Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/t;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v4

    .line 2368
    :goto_6
    iget-object v5, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    .line 3143
    iget-object v7, v5, Lse/emilsjolander/stickylistheaders/u;->b:Ljava/util/List;

    if-nez v7, :cond_15

    move v5, v3

    .line 2369
    :goto_7
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->c()I

    move-result v8

    if-lt v7, v8, :cond_16

    if-nez v0, :cond_12

    if-eqz v5, :cond_16

    .line 2370
    :cond_12
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2375
    :goto_8
    invoke-direct {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setHeaderOffet(I)V

    .line 2377
    iget-boolean v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->j:Z

    if-nez v0, :cond_13

    .line 2378
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->e:Ljava/lang/Integer;

    .line 2379
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    .line 3150
    iput v1, v0, Lse/emilsjolander/stickylistheaders/u;->c:I

    .line 2382
    :cond_13
    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b()V

    goto/16 :goto_1

    :cond_14
    move v0, v3

    .line 2367
    goto :goto_6

    .line 3146
    :cond_15
    iget-object v5, v5, Lse/emilsjolander/stickylistheaders/u;->b:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_7

    .line 2365
    :cond_16
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_17
    move v0, v6

    goto :goto_8
.end method

.method private static a(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 240
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 241
    if-nez v0, :cond_1

    .line 242
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 243
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, v3, :cond_2

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, v2, :cond_0

    .line 245
    :cond_2
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 246
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 247
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method static synthetic a(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a(I)V

    return-void
.end method

.method static synthetic a(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;Landroid/graphics/Canvas;Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 38
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x0

    .line 407
    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->c()I

    move-result v3

    .line 408
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/u;->getChildCount()I

    move-result v4

    move v1, v2

    .line 409
    :goto_0
    if-ge v1, v4, :cond_2

    .line 412
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/u;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 413
    instance-of v5, v0, Lse/emilsjolander/stickylistheaders/t;

    if-eqz v5, :cond_0

    .line 418
    check-cast v0, Lse/emilsjolander/stickylistheaders/t;

    .line 419
    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/t;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 424
    iget-object v5, v0, Lse/emilsjolander/stickylistheaders/t;->d:Landroid/view/View;

    .line 425
    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/t;->getTop()I

    move-result v0

    if-ge v0, v3, :cond_1

    .line 426
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v6, :cond_0

    .line 427
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 409
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 430
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 435
    :cond_2
    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 252
    if-eqz p1, :cond_0

    .line 253
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->l:I

    sub-int/2addr v0, v1

    iget v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->n:I

    sub-int/2addr v0, v1

    .line 254
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 256
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 258
    invoke-virtual {p0, p1, v0, v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->measureChild(Landroid/view/View;II)V

    .line 261
    :cond_0
    return-void
.end method

.method private static b(I)Z
    .locals 3

    .prologue
    .line 681
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, p0, :cond_0

    .line 682
    const-string v0, "StickyListHeaders"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Api lvl must be at least "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to call this method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/4 v0, 0x0

    .line 685
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;Landroid/graphics/Canvas;Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 38
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method private c()I
    .locals 2

    .prologue
    .line 579
    iget v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->k:I

    iget-boolean v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->i:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->m:I

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->c:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic d(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a()V

    return-void
.end method

.method static synthetic e(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->f:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method static synthetic f(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Lse/emilsjolander/stickylistheaders/u;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    return-object v0
.end method

.method static synthetic g(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->i:Z

    return v0
.end method

.method static synthetic h(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->m:I

    return v0
.end method

.method private setHeaderOffet(I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 441
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 442
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->e:Ljava/lang/Integer;

    .line 443
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 444
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 450
    :goto_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->t:Lse/emilsjolander/stickylistheaders/q;

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 454
    :cond_1
    return-void

    .line 446
    :cond_2
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 447
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 448
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public canScrollVertically(I)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1112
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/u;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 280
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/u;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/u;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 281
    :cond_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 283
    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 458
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 459
    if-nez v0, :cond_0

    .line 460
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->p:F

    .line 461
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    iget v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->p:F

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->e:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->q:Z

    .line 465
    :cond_0
    iget-boolean v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->q:Z

    if-eqz v0, :cond_4

    .line 466
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    if-eqz v0, :cond_2

    iget v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->p:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->r:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 467
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 486
    :goto_1
    return v0

    :cond_1
    move v0, v8

    .line 461
    goto :goto_0

    .line 469
    :cond_2
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 470
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 471
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 472
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 473
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 476
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->p:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 477
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 478
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/u;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 479
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 480
    iput-boolean v8, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->q:Z

    goto :goto_1

    .line 483
    :cond_4
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/u;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public getAdapter()Lse/emilsjolander/stickylistheaders/l;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    iget-object v0, v0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/l;

    goto :goto_0
.end method

.method public getAreHeadersSticky()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 604
    .line 3596
    iget-boolean v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->h:Z

    .line 604
    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 953
    const/16 v0, 0xb

    invoke-static {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 954
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/u;->getCheckedItemCount()I

    move-result v0

    .line 956
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCheckedItemIds()[J
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 961
    const/16 v0, 0x8

    invoke-static {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/u;->getCheckedItemIds()[J

    move-result-object v0

    .line 964
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 969
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/u;->getCheckedItemPosition()I

    move-result v0

    return v0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 974
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/u;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/u;->getCount()I

    move-result v0

    return v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->w:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .prologue
    .line 749
    iget v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->x:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/u;->getEmptyView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/u;->getFirstVisiblePosition()I

    move-result v0

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/u;->getFooterViewsCount()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/u;->getHeaderViewsCount()I

    move-result v0

    return v0
.end method

.method public getLastVisiblePosition()I
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/u;->getLastVisiblePosition()I

    move-result v0

    return v0
.end method

.method public getListChildCount()I
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/u;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getOverScrollMode()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 841
    const/16 v0, 0x9

    invoke-static {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/u;->getOverScrollMode()I

    move-result v0

    .line 844
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 1049
    iget v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->o:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 1034
    iget v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->l:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    .line 1044
    iget v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->n:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    .line 1039
    iget v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->m:I

    return v0
.end method

.method public getScrollBarStyle()I
    .locals 1

    .prologue
    .line 1080
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/u;->getScrollBarStyle()I

    move-result v0

    return v0
.end method

.method public getStickyHeaderTopOffset()I
    .locals 1

    .prologue
    .line 618
    iget v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->k:I

    return v0
.end method

.method public getWrappedList()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    return-object v0
.end method

.method public isHorizontalScrollBarEnabled()Z
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/u;->isHorizontalScrollBarEnabled()Z

    move-result v0

    return v0
.end method

.method public isVerticalScrollBarEnabled()Z
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/u;->isVerticalScrollBarEnabled()Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 265
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v1}, Lse/emilsjolander/stickylistheaders/u;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lse/emilsjolander/stickylistheaders/u;->layout(IIII)V

    .line 266
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 268
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 269
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    iget v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->l:I

    iget-object v3, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->l:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    .line 270
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    .line 269
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 272
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    .line 235
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 236
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    invoke-direct {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b(Landroid/view/View;)V

    .line 237
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 1105
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1106
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/u;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1107
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1096
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1097
    sget-object v1, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq v0, v1, :cond_0

    .line 1098
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Handling non empty state of parent class is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1100
    :cond_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/u;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public setAdapter(Lse/emilsjolander/stickylistheaders/l;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 691
    if-nez p1, :cond_2

    .line 692
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    instance-of v0, v0, Lse/emilsjolander/stickylistheaders/k;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    check-cast v0, Lse/emilsjolander/stickylistheaders/k;

    iput-object v2, v0, Lse/emilsjolander/stickylistheaders/k;->c:Landroid/widget/SectionIndexer;

    .line 695
    :cond_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    if-eqz v0, :cond_1

    .line 696
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    iput-object v2, v0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/l;

    .line 698
    :cond_1
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/u;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 699
    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a()V

    .line 724
    :goto_0
    return-void

    .line 702
    :cond_2
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    if-eqz v0, :cond_3

    .line 703
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->v:Lse/emilsjolander/stickylistheaders/m;

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/a;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 706
    :cond_3
    instance-of v0, p1, Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_4

    .line 707
    new-instance v0, Lse/emilsjolander/stickylistheaders/k;

    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lse/emilsjolander/stickylistheaders/k;-><init>(Landroid/content/Context;Lse/emilsjolander/stickylistheaders/l;)V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    .line 711
    :goto_1
    new-instance v0, Lse/emilsjolander/stickylistheaders/m;

    invoke-direct {v0, p0, v3}, Lse/emilsjolander/stickylistheaders/m;-><init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;B)V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->v:Lse/emilsjolander/stickylistheaders/m;

    .line 712
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->v:Lse/emilsjolander/stickylistheaders/m;

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/a;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 714
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->s:Lse/emilsjolander/stickylistheaders/o;

    if-eqz v0, :cond_5

    .line 715
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    new-instance v1, Lse/emilsjolander/stickylistheaders/n;

    invoke-direct {v1, p0, v3}, Lse/emilsjolander/stickylistheaders/n;-><init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;B)V

    .line 6182
    iput-object v1, v0, Lse/emilsjolander/stickylistheaders/a;->b:Lse/emilsjolander/stickylistheaders/b;

    .line 720
    :goto_2
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->w:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->x:I

    invoke-virtual {v0, v1, v2}, Lse/emilsjolander/stickylistheaders/a;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 722
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/u;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 723
    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a()V

    goto :goto_0

    .line 709
    :cond_4
    new-instance v0, Lse/emilsjolander/stickylistheaders/a;

    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lse/emilsjolander/stickylistheaders/a;-><init>(Landroid/content/Context;Lse/emilsjolander/stickylistheaders/l;)V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    goto :goto_1

    .line 717
    :cond_5
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    .line 7182
    iput-object v2, v0, Lse/emilsjolander/stickylistheaders/a;->b:Lse/emilsjolander/stickylistheaders/b;

    goto :goto_2
.end method

.method public setAreHeadersSticky(Z)V
    .locals 1

    .prologue
    .line 585
    iput-boolean p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->h:Z

    .line 586
    if-nez p1, :cond_0

    .line 587
    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a()V

    .line 592
    :goto_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/u;->invalidate()V

    .line 593
    return-void

    .line 589
    :cond_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/u;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a(I)V

    goto :goto_0
.end method

.method public setBlockLayoutChildren(Z)V
    .locals 1

    .prologue
    .line 1120
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    .line 10187
    iput-boolean p1, v0, Lse/emilsjolander/stickylistheaders/u;->d:Z

    .line 1121
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 943
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/u;->setChoiceMode(I)V

    .line 944
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1

    .prologue
    .line 1005
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/u;->setClipToPadding(Z)V

    .line 1008
    :cond_0
    iput-boolean p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->i:Z

    .line 1009
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 731
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->w:Landroid/graphics/drawable/Drawable;

    .line 732
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->w:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->x:I

    invoke-virtual {v0, v1, v2}, Lse/emilsjolander/stickylistheaders/a;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 735
    :cond_0
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 3

    .prologue
    .line 738
    iput p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->x:I

    .line 739
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->w:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->x:I

    invoke-virtual {v0, v1, v2}, Lse/emilsjolander/stickylistheaders/a;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 742
    :cond_0
    return-void
.end method

.method public setDrawingListUnderStickyHeader(Z)V
    .locals 2

    .prologue
    .line 623
    iput-boolean p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->j:Z

    .line 625
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    .line 4150
    const/4 v1, 0x0

    iput v1, v0, Lse/emilsjolander/stickylistheaders/u;->c:I

    .line 626
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/u;->setEmptyView(Landroid/view/View;)V

    .line 812
    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1058
    const/16 v0, 0xb

    invoke-static {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1059
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/u;->setFastScrollAlwaysVisible(Z)V

    .line 1061
    :cond_0
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/u;->setFastScrollEnabled(Z)V

    .line 1054
    return-void
.end method

.method public setHorizontalScrollBarEnabled(Z)V
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/u;->setHorizontalScrollBarEnabled(Z)V

    .line 836
    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1089
    const/16 v0, 0xb

    invoke-static {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/u;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 1092
    :cond_0
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/u;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 992
    return-void
.end method

.method public setOnHeaderClickListener(Lse/emilsjolander/stickylistheaders/o;)V
    .locals 3

    .prologue
    .line 633
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->s:Lse/emilsjolander/stickylistheaders/o;

    .line 634
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->s:Lse/emilsjolander/stickylistheaders/o;

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    new-instance v1, Lse/emilsjolander/stickylistheaders/n;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lse/emilsjolander/stickylistheaders/n;-><init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;B)V

    .line 4182
    iput-object v1, v0, Lse/emilsjolander/stickylistheaders/a;->b:Lse/emilsjolander/stickylistheaders/b;

    .line 638
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    new-instance v1, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$2;

    invoke-direct {v1, p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$2;-><init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    .line 5182
    const/4 v1, 0x0

    iput-object v1, v0, Lse/emilsjolander/stickylistheaders/a;->b:Lse/emilsjolander/stickylistheaders/b;

    goto :goto_0
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/u;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 772
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/u;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 776
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 753
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->f:Landroid/widget/AbsListView$OnScrollListener;

    .line 754
    return-void
.end method

.method public setOnStickyHeaderChangedListener(Lse/emilsjolander/stickylistheaders/p;)V
    .locals 0

    .prologue
    .line 659
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->u:Lse/emilsjolander/stickylistheaders/p;

    .line 660
    return-void
.end method

.method public setOnStickyHeaderOffsetChangedListener(Lse/emilsjolander/stickylistheaders/q;)V
    .locals 0

    .prologue
    .line 655
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->t:Lse/emilsjolander/stickylistheaders/q;

    .line 656
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 2

    .prologue
    .line 758
    if-eqz p1, :cond_0

    .line 759
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    new-instance v1, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$3;

    invoke-direct {v1, p0, p1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$3;-><init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/u;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 768
    :goto_0
    return-void

    .line 766
    :cond_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/u;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public setOverScrollMode(I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 850
    const/16 v0, 0x9

    invoke-static {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/u;->setOverScrollMode(I)V

    .line 855
    :cond_0
    return-void
.end method

.method public setPadding(IIII)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1013
    iput p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->l:I

    .line 1014
    iput p2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->m:I

    .line 1015
    iput p3, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->n:I

    .line 1016
    iput p4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->o:I

    .line 1018
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0, p1, p2, p3, p4}, Lse/emilsjolander/stickylistheaders/u;->setPadding(IIII)V

    .line 1021
    :cond_0
    invoke-super {p0, v1, v1, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1022
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->requestLayout()V

    .line 1023
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1

    .prologue
    .line 1076
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/u;->setScrollBarStyle(I)V

    .line 1077
    return-void
.end method

.method public setSelection(I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 912
    .line 7920
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    if-eqz v0, :cond_3

    .line 8565
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 9561
    if-eqz v0, :cond_0

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    invoke-virtual {v2, v0}, Lse/emilsjolander/stickylistheaders/a;->a(I)J

    move-result-wide v2

    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Lse/emilsjolander/stickylistheaders/a;->a(I)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 8566
    :goto_0
    if-nez v0, :cond_3

    .line 8567
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    const/4 v2, 0x0

    iget-object v3, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0, p1, v2, v3}, Lse/emilsjolander/stickylistheaders/a;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 8568
    if-nez v0, :cond_2

    .line 8569
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "header may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    .line 9561
    goto :goto_0

    .line 8571
    :cond_2
    invoke-static {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a(Landroid/view/View;)V

    .line 8572
    invoke-direct {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b(Landroid/view/View;)V

    .line 8573
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 7920
    :goto_1
    add-int/lit8 v0, v0, 0x0

    .line 7921
    iget-boolean v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->i:Z

    if-eqz v2, :cond_4

    :goto_2
    sub-int/2addr v0, v1

    .line 7922
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v1, p1, v0}, Lse/emilsjolander/stickylistheaders/u;->setSelectionFromTop(II)V

    .line 913
    return-void

    :cond_3
    move v0, v1

    .line 8575
    goto :goto_1

    .line 7921
    :cond_4
    iget v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->m:I

    goto :goto_2
.end method

.method public setSelector(I)V
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/u;->setSelector(I)V

    .line 931
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/u;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 927
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1

    .prologue
    .line 1124
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/u;->setStackFromBottom(Z)V

    .line 1125
    return-void
.end method

.method public setStickyHeaderTopOffset(I)V
    .locals 1

    .prologue
    .line 613
    iput p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->k:I

    .line 614
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/u;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a(I)V

    .line 615
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 1

    .prologue
    .line 1116
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/u;->setTranscriptMode(I)V

    .line 1117
    return-void
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/u;->setVerticalScrollBarEnabled(Z)V

    .line 831
    return-void
.end method

.method public showContextMenu()Z
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/u;->showContextMenu()Z

    move-result v0

    return v0
.end method
