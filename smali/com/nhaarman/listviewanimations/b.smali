.class public abstract Lcom/nhaarman/listviewanimations/b;
.super Landroid/widget/BaseAdapter;
.source "BaseAdapterDecorator.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Lcom/nhaarman/listviewanimations/a/c;
.implements Lcom/nhaarman/listviewanimations/a/e;
.implements Lcom/nhaarman/listviewanimations/a/f;


# instance fields
.field public final a:Landroid/widget/BaseAdapter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public b:Lcom/nhaarman/listviewanimations/a/d;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/BaseAdapter;)V
    .locals 0
    .param p1    # Landroid/widget/BaseAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/nhaarman/listviewanimations/b;->a:Landroid/widget/BaseAdapter;

    .line 60
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/b;->a:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Lcom/nhaarman/listviewanimations/a/f;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/b;->a:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/nhaarman/listviewanimations/a/f;

    invoke-interface {v0, p1, p2}, Lcom/nhaarman/listviewanimations/a/f;->a(II)V

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    const-string v0, "ListViewAnimations"

    const-string v1, "Warning: swapItems called on an adapter that does not implement Swappable!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 240
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/b;->a:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Lcom/nhaarman/listviewanimations/a/c;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/b;->a:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/nhaarman/listviewanimations/a/c;

    invoke-interface {v0, p1, p2}, Lcom/nhaarman/listviewanimations/a/c;->a(ILjava/lang/Object;)V

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    const-string v0, "ListViewAnimations"

    const-string v1, "Warning: add called on an adapter that does not implement Insertable!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final a(Lcom/nhaarman/listviewanimations/a/d;)V
    .locals 1
    .param p1    # Lcom/nhaarman/listviewanimations/a/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 100
    iput-object p1, p0, Lcom/nhaarman/listviewanimations/b;->b:Lcom/nhaarman/listviewanimations/a/d;

    .line 102
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/b;->a:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Lcom/nhaarman/listviewanimations/a/e;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/b;->a:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/nhaarman/listviewanimations/a/e;

    invoke-interface {v0, p1}, Lcom/nhaarman/listviewanimations/a/e;->a(Lcom/nhaarman/listviewanimations/a/d;)V

    .line 105
    :cond_0
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/b;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/b;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/b;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/b;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/b;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/b;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getPositionForSection(I)I
    .locals 2

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 204
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/b;->a:Landroid/widget/BaseAdapter;

    instance-of v1, v1, Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_0

    .line 205
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/b;->a:Landroid/widget/BaseAdapter;

    check-cast v0, Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    .line 207
    :cond_0
    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 2

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 213
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/b;->a:Landroid/widget/BaseAdapter;

    instance-of v1, v1, Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/b;->a:Landroid/widget/BaseAdapter;

    check-cast v0, Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v0

    .line 216
    :cond_0
    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 222
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 223
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/b;->a:Landroid/widget/BaseAdapter;

    instance-of v1, v1, Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/b;->a:Landroid/widget/BaseAdapter;

    check-cast v0, Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 226
    :cond_0
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/b;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/b;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/b;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/b;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/b;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/b;->a:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Lcom/nhaarman/listviewanimations/a;

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/b;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 172
    :cond_0
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/b;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 189
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1    # Landroid/database/DataSetObserver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 193
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/b;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 194
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1    # Landroid/database/DataSetObserver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 198
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/b;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 199
    return-void
.end method
