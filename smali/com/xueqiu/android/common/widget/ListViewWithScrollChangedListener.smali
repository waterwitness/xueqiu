.class public Lcom/xueqiu/android/common/widget/ListViewWithScrollChangedListener;
.super Landroid/widget/ListView;
.source "ListViewWithScrollChangedListener.java"


# instance fields
.field private a:Lcom/xueqiu/android/common/widget/ai;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/ListViewWithScrollChangedListener;->a:Lcom/xueqiu/android/common/widget/ai;

    .line 20
    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onScrollChanged(IIII)V

    .line 33
    return-void
.end method

.method public setScrollChangedListener(Lcom/xueqiu/android/common/widget/ai;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/ListViewWithScrollChangedListener;->a:Lcom/xueqiu/android/common/widget/ai;

    .line 37
    return-void
.end method
