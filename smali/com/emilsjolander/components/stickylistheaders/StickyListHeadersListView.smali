.class public Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;
.super Landroid/widget/FrameLayout;
.source "StickyListHeadersListView.java"


# instance fields
.field private mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

.field private mAreHeadersSticky:Z

.field private mClippingToPadding:Z

.field private mDataSetObserver:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$AdapterWrapperDataSetObserver;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mHeader:Landroid/view/View;

.field private mHeaderId:Ljava/lang/Long;

.field private mHeaderOffset:Ljava/lang/Integer;

.field private mHeaderPosition:Ljava/lang/Integer;

.field private mIsDrawingListUnderStickyHeader:Z

.field private mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

.field private mOnHeaderClickListener:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;

.field private mOnScrollListenerDelegate:Landroid/widget/AbsListView$OnScrollListener;

.field private mOnStickyHeaderChangedListener:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$OnStickyHeaderChangedListener;

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    iput-boolean v5, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAreHeadersSticky:Z

    .line 71
    iput-boolean v5, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Z

    .line 72
    iput-boolean v5, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mIsDrawingListUnderStickyHeader:Z

    .line 73
    iput v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mPaddingLeft:I

    .line 74
    iput v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mPaddingTop:I

    .line 75
    iput v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mPaddingRight:I

    .line 76
    iput v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mPaddingBottom:I

    .line 99
    new-instance v0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-direct {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    .line 100
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 101
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getDividerHeight()I

    move-result v0

    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDividerHeight:I

    .line 105
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, v3}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 106
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setDividerHeight(I)V

    .line 108
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    new-instance v1, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$WrapperViewListLifeCycleListener;

    invoke-direct {v1, p0, v3}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$WrapperViewListLifeCycleListener;-><init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$1;)V

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setLifeCycleListener(Lcom/emilsjolander/components/stickylistheaders/WrapperViewList$LifeCycleListener;)V

    .line 109
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    new-instance v1, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$WrapperListScrollListener;

    invoke-direct {v1, p0, v3}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$WrapperListScrollListener;-><init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$1;)V

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 110
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->addView(Landroid/view/View;)V

    .line 112
    if-eqz p2, :cond_4

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/xueqiu/android/R$styleable;->StickyListHeadersListView:[I

    .line 114
    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 118
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 119
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 120
    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mPaddingLeft:I

    .line 121
    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mPaddingTop:I

    .line 122
    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mPaddingRight:I

    .line 123
    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mPaddingBottom:I

    .line 133
    :goto_0
    iget v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mPaddingLeft:I

    iget v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mPaddingTop:I

    iget v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mPaddingRight:I

    iget v4, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mPaddingBottom:I

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setPadding(IIII)V

    .line 137
    const/16 v0, 0x8

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Z

    .line 138
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 139
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    iget-boolean v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Z

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setClipToPadding(Z)V

    .line 142
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    .line 144
    invoke-virtual {v3}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getVerticalFadingEdgeLength()I

    move-result v3

    .line 142
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setFadingEdgeLength(I)V

    .line 145
    const/16 v0, 0x15

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 146
    const/16 v2, 0x1000

    if-ne v0, v2, :cond_6

    .line 147
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setVerticalFadingEdgeEnabled(Z)V

    .line 148
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setHorizontalFadingEdgeEnabled(Z)V

    .line 156
    :goto_1
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    const/16 v2, 0xe

    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    .line 157
    invoke-virtual {v3}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getCacheColorHint()I

    move-result v3

    .line 156
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setCacheColorHint(I)V

    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    .line 159
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    const/16 v2, 0x11

    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    .line 160
    invoke-virtual {v3}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getChoiceMode()I

    move-result v3

    .line 159
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setChoiceMode(I)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setDrawSelectorOnTop(Z)V

    .line 164
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    const/16 v2, 0x12

    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    .line 165
    invoke-virtual {v3}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->isFastScrollEnabled()Z

    move-result v3

    .line 164
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setFastScrollEnabled(Z)V

    .line 166
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setScrollBarStyle(I)V

    .line 167
    const/4 v0, 0x6

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 168
    if-nez v0, :cond_8

    .line 169
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setHorizontalScrollBarEnabled(Z)V

    .line 170
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setVerticalScrollBarEnabled(Z)V

    .line 177
    :cond_1
    :goto_2
    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_2

    .line 179
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v2, v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    .line 182
    invoke-virtual {v3}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->isScrollingCacheEnabled()Z

    move-result v3

    .line 181
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setScrollingCacheEnabled(Z)V

    .line 183
    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_3

    .line 185
    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 187
    :cond_3
    const/16 v0, 0x10

    iget v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDividerHeight:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDividerHeight:I

    .line 190
    const/16 v0, 0x17

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAreHeadersSticky:Z

    .line 191
    const/16 v0, 0x18

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mIsDrawingListUnderStickyHeader:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 198
    :cond_4
    return-void

    .line 125
    :cond_5
    const/4 v0, 0x2

    const/4 v2, 0x0

    .line 126
    :try_start_1
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mPaddingLeft:I

    .line 127
    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mPaddingTop:I

    .line 128
    const/4 v0, 0x4

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mPaddingRight:I

    .line 130
    const/4 v0, 0x5

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mPaddingBottom:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 195
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 149
    :cond_6
    const/16 v2, 0x2000

    if-ne v0, v2, :cond_7

    .line 150
    :try_start_2
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setVerticalFadingEdgeEnabled(Z)V

    .line 151
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setHorizontalFadingEdgeEnabled(Z)V

    goto/16 :goto_1

    .line 153
    :cond_7
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setVerticalFadingEdgeEnabled(Z)V

    .line 154
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setHorizontalFadingEdgeEnabled(Z)V

    goto/16 :goto_1

    .line 171
    :cond_8
    if-ne v0, v5, :cond_9

    .line 172
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setVerticalScrollBarEnabled(Z)V

    goto/16 :goto_2

    .line 173
    :cond_9
    if-ne v0, v6, :cond_1

    .line 174
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setHorizontalScrollBarEnabled(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method static synthetic access$1000(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1200(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mOnHeaderClickListener:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderId:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$600(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->clearHeader()V

    return-void
.end method

.method static synthetic access$700(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mOnScrollListenerDelegate:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->updateOrClearHeader(I)V

    return-void
.end method

.method private clearHeader()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->removeView(Landroid/view/View;)V

    .line 226
    iput-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    .line 227
    iput-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderId:Ljava/lang/Long;

    .line 228
    iput-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    .line 229
    iput-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderOffset:Ljava/lang/Integer;

    .line 232
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setTopClippingLength(I)V

    .line 233
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->updateHeaderVisibilities()V

    .line 235
    :cond_0
    return-void
.end method

.method private getHeaderOverlap(I)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 454
    invoke-direct {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->isStartOfSection(I)Z

    move-result v1

    .line 455
    if-nez v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v1, p1, v2, v3}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    move-result-object v1

    .line 458
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWidth()I

    move-result v2

    .line 459
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 460
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 461
    invoke-virtual {p0, v1, v2, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->measureChild(Landroid/view/View;II)V

    .line 462
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 464
    :cond_0
    return v0
.end method

.method private isStartOfSection(I)Z
    .locals 4

    .prologue
    .line 450
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->getHeaderId(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->getHeaderId(I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requireSdkVersion(I)V
    .locals 1

    .prologue
    .line 799
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, p1, :cond_0

    .line 800
    new-instance v0, Lcom/emilsjolander/components/stickylistheaders/ApiLevelTooLowException;

    invoke-direct {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/ApiLevelTooLowException;-><init>(I)V

    throw v0

    .line 802
    :cond_0
    return-void
.end method

.method private setHeaderOffet(I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderOffset:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderOffset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 373
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderOffset:Ljava/lang/Integer;

    .line 374
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 375
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderOffset:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 382
    :cond_1
    :goto_0
    return-void

    .line 377
    :cond_2
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 378
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderOffset:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 379
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private swapHeader(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->removeView(Landroid/view/View;)V

    .line 323
    :cond_0
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    .line 324
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->addView(Landroid/view/View;)V

    .line 325
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    new-instance v1, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$1;

    invoke-direct {v1, p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$1;-><init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    return-void
.end method

.method private updateHeader(I)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 264
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_5

    .line 265
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    .line 266
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->getHeaderId(I)J

    move-result-wide v0

    .line 267
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderId:Ljava/lang/Long;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_5

    .line 268
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderId:Ljava/lang/Long;

    .line 269
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v1, v2, p0}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 270
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    if-eq v0, v2, :cond_3

    .line 271
    if-nez v2, :cond_2

    .line 272
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "header may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_2
    invoke-direct {p0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->swapHeader(Landroid/view/View;)V

    .line 278
    :cond_3
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWidth()I

    move-result v0

    .line 279
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 280
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 281
    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {p0, v3, v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->measureChild(Landroid/view/View;II)V

    .line 283
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mOnStickyHeaderChangedListener:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$OnStickyHeaderChangedListener;

    if-eqz v0, :cond_4

    .line 284
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mOnStickyHeaderChangedListener:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$OnStickyHeaderChangedListener;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderId:Ljava/lang/Long;

    .line 285
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v1, p0

    move v3, p1

    .line 284
    invoke-interface/range {v0 .. v5}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$OnStickyHeaderChangedListener;->onStickyHeaderChanged(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;Landroid/view/View;IJ)V

    .line 290
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderOffset:Ljava/lang/Integer;

    .line 299
    :cond_5
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mPaddingTop:I

    :goto_0
    add-int v4, v1, v0

    move v2, v6

    .line 300
    :goto_1
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 301
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 302
    instance-of v0, v1, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    if-eqz v0, :cond_a

    move-object v0, v1

    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    .line 303
    :goto_2
    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v3, v1}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->containsFooterView(Landroid/view/View;)Z

    move-result v5

    .line 304
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    iget-boolean v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Z

    if-eqz v3, :cond_b

    iget v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mPaddingTop:I

    :goto_3
    if-lt v7, v3, :cond_c

    if-nez v0, :cond_6

    if-eqz v5, :cond_c

    .line 305
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 310
    :cond_7
    invoke-direct {p0, v6}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setHeaderOffet(I)V

    .line 312
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mIsDrawingListUnderStickyHeader:Z

    if-nez v0, :cond_8

    .line 313
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderOffset:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setTopClippingLength(I)V

    .line 316
    :cond_8
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->updateHeaderVisibilities()V

    .line 317
    return-void

    :cond_9
    move v0, v6

    .line 299
    goto :goto_0

    :cond_a
    move v0, v6

    .line 302
    goto :goto_2

    :cond_b
    move v3, v6

    .line 304
    goto :goto_3

    .line 300
    :cond_c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method private updateHeaderVisibilities()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x0

    .line 342
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 343
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderOffset:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderOffset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    move v2, v0

    .line 347
    :goto_1
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getChildCount()I

    move-result v4

    move v3, v1

    .line 348
    :goto_2
    if-ge v3, v4, :cond_5

    .line 349
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, v3}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 350
    instance-of v5, v0, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    if-eqz v5, :cond_0

    .line 351
    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    .line 352
    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->hasHeader()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 353
    iget-object v5, v0, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    .line 354
    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->getTop()I

    move-result v0

    if-ge v0, v2, :cond_4

    .line 355
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v6, :cond_0

    .line 356
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 348
    :cond_0
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_1
    move v0, v1

    .line 343
    goto :goto_0

    .line 345
    :cond_2
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mPaddingTop:I

    move v2, v0

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_1

    .line 359
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 366
    :cond_5
    return-void
.end method

.method private updateOrClearHeader(I)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 238
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    if-nez v0, :cond_1

    move v0, v1

    .line 239
    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAreHeadersSticky:Z

    if-nez v3, :cond_2

    .line 259
    :cond_0
    :goto_1
    return-void

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->getCount()I

    move-result v0

    goto :goto_0

    .line 243
    :cond_2
    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v3}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getHeaderViewsCount()I

    move-result v3

    .line 244
    sub-int v4, p1, v3

    .line 249
    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v3}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getFirstVisiblePosition()I

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v3, v1}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lez v3, :cond_5

    move v3, v2

    .line 250
    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-gt v4, v0, :cond_3

    if-gez v4, :cond_6

    :cond_3
    move v0, v2

    .line 252
    :goto_3
    iget-object v5, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v5}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getChildCount()I

    move-result v5

    if-eqz v5, :cond_7

    .line 253
    :goto_4
    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    if-eqz v3, :cond_8

    .line 254
    :cond_4
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->clearHeader()V

    goto :goto_1

    :cond_5
    move v3, v1

    .line 249
    goto :goto_2

    :cond_6
    move v0, v1

    .line 250
    goto :goto_3

    :cond_7
    move v2, v1

    .line 252
    goto :goto_4

    .line 258
    :cond_8
    invoke-direct {p0, v4}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->updateHeader(I)V

    goto :goto_1
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->addFooterView(Landroid/view/View;)V

    .line 615
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->addHeaderView(Landroid/view/View;)V

    .line 603
    return-void
.end method

.method public areHeadersSticky()Z
    .locals 1

    .prologue
    .line 481
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAreHeadersSticky:Z

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 218
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 219
    return-void
.end method

.method public getAdapter()Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    iget-object v0, v0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    goto :goto_0
.end method

.method public getAreHeadersSticky()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->areHeadersSticky()Z

    move-result v0

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 717
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->requireSdkVersion(I)V

    .line 718
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getCheckedItemCount()I

    move-result v0

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 723
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->requireSdkVersion(I)V

    .line 724
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getCheckedItemIds()[J

    move-result-object v0

    return-object v0
.end method

.method public getCheckedItemPosition()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 729
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->requireSdkVersion(I)V

    .line 730
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getCheckedItemPosition()I

    move-result v0

    return v0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 735
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->requireSdkVersion(I)V

    .line 736
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getCount()I

    move-result v0

    return v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDividerHeight:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getEmptyView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getFirstVisiblePosition()I

    move-result v0

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getFooterViewsCount()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getHeaderViewsCount()I

    move-result v0

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemIdAtPosition(I)J
    .locals 2

    .prologue
    .line 748
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getItemIdAtPosition(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastVisiblePosition()I
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getLastVisiblePosition()I

    move-result v0

    return v0
.end method

.method public getListChildAt(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getListChildCount()I
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 791
    iget v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mPaddingBottom:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 776
    iget v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mPaddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    .line 786
    iget v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mPaddingRight:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    .line 781
    iget v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mPaddingTop:I

    return v0
.end method

.method public getWrappedList()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    return-object v0
.end method

.method public isDrawingListUnderStickyHeader()Z
    .locals 1

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mIsDrawingListUnderStickyHeader:Z

    return v0
.end method

.method public isIndexScrollEnabled()Z
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->isIndexScrollEnabled()Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 202
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    iget v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mPaddingLeft:I

    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v3}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mPaddingLeft:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->layout(IIII)V

    .line 203
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 205
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mPaddingTop:I

    :goto_0
    add-int/2addr v0, v2

    .line 208
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 210
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 205
    goto :goto_0
.end method

.method public removeFooterView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->removeFooterView(Landroid/view/View;)Z

    .line 619
    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->removeHeaderView(Landroid/view/View;)Z

    .line 607
    return-void
.end method

.method public setAdapter(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 538
    if-nez p1, :cond_0

    .line 539
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 540
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->clearHeader()V

    .line 565
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDataSetObserver:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$AdapterWrapperDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 547
    :cond_1
    instance-of v0, p1, Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_2

    .line 548
    new-instance v0, Lcom/emilsjolander/components/stickylistheaders/SectionIndexerAdapterWrapper;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/emilsjolander/components/stickylistheaders/SectionIndexerAdapterWrapper;-><init>(Landroid/content/Context;Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;)V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    .line 552
    :goto_1
    new-instance v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$AdapterWrapperDataSetObserver;

    invoke-direct {v0, p0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$AdapterWrapperDataSetObserver;-><init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$1;)V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDataSetObserver:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$AdapterWrapperDataSetObserver;

    .line 553
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDataSetObserver:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$AdapterWrapperDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 555
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mOnHeaderClickListener:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;

    if-eqz v0, :cond_3

    .line 556
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    new-instance v1, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$AdapterWrapperHeaderClickHandler;

    invoke-direct {v1, p0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$AdapterWrapperHeaderClickHandler;-><init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$1;)V

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->setOnHeaderClickListener(Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$OnHeaderClickListener;)V

    .line 561
    :goto_2
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDividerHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->setDivider(Landroid/graphics/drawable/Drawable;I)V

    .line 563
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 564
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->clearHeader()V

    goto :goto_0

    .line 550
    :cond_2
    new-instance v0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;-><init>(Landroid/content/Context;Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;)V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    goto :goto_1

    .line 558
    :cond_3
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->setOnHeaderClickListener(Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$OnHeaderClickListener;)V

    goto :goto_2
.end method

.method public setAreHeadersSticky(Z)V
    .locals 1

    .prologue
    .line 470
    iput-boolean p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAreHeadersSticky:Z

    .line 471
    if-nez p1, :cond_0

    .line 472
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->clearHeader()V

    .line 477
    :goto_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->invalidate()V

    .line 478
    return-void

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getFixedFirstVisibleItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->updateOrClearHeader(I)V

    goto :goto_0
.end method

.method public setChoiceMode(I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 705
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->requireSdkVersion(I)V

    .line 706
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setChoiceMode(I)V

    .line 707
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setClipToPadding(Z)V

    .line 756
    :cond_0
    iput-boolean p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Z

    .line 757
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 572
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 573
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDividerHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->setDivider(Landroid/graphics/drawable/Drawable;I)V

    .line 576
    :cond_0
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 3

    .prologue
    .line 579
    iput p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDividerHeight:I

    .line 580
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDividerHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->setDivider(Landroid/graphics/drawable/Drawable;I)V

    .line 583
    :cond_0
    return-void
.end method

.method public setDrawingListUnderStickyHeader(Z)V
    .locals 2

    .prologue
    .line 493
    iput-boolean p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mIsDrawingListUnderStickyHeader:Z

    .line 495
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setTopClippingLength(I)V

    .line 496
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setEmptyView(Landroid/view/View;)V

    .line 627
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setFastScrollEnabled(Z)V

    .line 796
    return-void
.end method

.method public setIndexScrollEnabled(Z)V
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setIndexScrollEnabled(Z)V

    .line 806
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 711
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->requireSdkVersion(I)V

    .line 712
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1, p2}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setItemChecked(IZ)V

    .line 713
    return-void
.end method

.method public setOnHeaderClickListener(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 503
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mOnHeaderClickListener:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;

    .line 504
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mOnHeaderClickListener:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    new-instance v1, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$AdapterWrapperHeaderClickHandler;

    invoke-direct {v1, p0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$AdapterWrapperHeaderClickHandler;-><init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$1;)V

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->setOnHeaderClickListener(Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$OnHeaderClickListener;)V

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->setOnHeaderClickListener(Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$OnHeaderClickListener;)V

    goto :goto_0
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 599
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 594
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mOnScrollListenerDelegate:Landroid/widget/AbsListView$OnScrollListener;

    .line 595
    return-void
.end method

.method public setOnStickyHeaderChangedListener(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$OnStickyHeaderChangedListener;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mOnStickyHeaderChangedListener:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$OnStickyHeaderChangedListener;

    .line 515
    return-void
.end method

.method public setPadding(IIII)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 761
    iput p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mPaddingLeft:I

    .line 762
    iput p2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mPaddingTop:I

    .line 763
    iput p3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mPaddingRight:I

    .line 764
    iput p4, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mPaddingBottom:I

    .line 768
    invoke-super {p0, p1, v1, p3, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 769
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, v1, p2, v1, p4}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setPadding(IIII)V

    .line 772
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setSelection(I)V

    .line 677
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setSelectionAfterHeaderView()V

    .line 681
    return-void
.end method

.method public setSelectionFromTop(II)V
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1, p2}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setSelectionFromTop(II)V

    .line 685
    return-void
.end method

.method public setSelector(I)V
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setSelector(I)V

    .line 693
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 689
    return-void
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 635
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->requireSdkVersion(I)V

    .line 636
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1, p2}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->smoothScrollBy(II)V

    .line 637
    return-void
.end method

.method public smoothScrollByOffset(I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 641
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->requireSdkVersion(I)V

    .line 642
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->smoothScrollByOffset(I)V

    .line 643
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 647
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 648
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->smoothScrollToPosition(I)V

    .line 653
    :goto_0
    return-void

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 651
    :goto_1
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v1, p1, v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->smoothScrollToPositionFromTop(II)V

    goto :goto_0

    .line 650
    :cond_1
    invoke-direct {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getHeaderOverlap(I)I

    move-result v0

    goto :goto_1
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 657
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->requireSdkVersion(I)V

    .line 658
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1, p2}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->smoothScrollToPosition(II)V

    .line 659
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 663
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->requireSdkVersion(I)V

    .line 664
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, p2

    .line 665
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v1, p1, v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->smoothScrollToPositionFromTop(II)V

    .line 666
    return-void

    .line 664
    :cond_0
    invoke-direct {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getHeaderOverlap(I)I

    move-result v0

    goto :goto_0
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 670
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->requireSdkVersion(I)V

    .line 671
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, p2

    .line 672
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mList:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-virtual {v1, p1, v0, p3}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->smoothScrollToPositionFromTop(III)V

    .line 673
    return-void

    .line 671
    :cond_0
    invoke-direct {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getHeaderOverlap(I)I

    move-result v0

    goto :goto_0
.end method
