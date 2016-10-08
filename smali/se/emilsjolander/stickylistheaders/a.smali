.class Lse/emilsjolander/stickylistheaders/a;
.super Landroid/widget/BaseAdapter;
.source "AdapterWrapper.java"

# interfaces
.implements Lse/emilsjolander/stickylistheaders/l;


# instance fields
.field a:Lse/emilsjolander/stickylistheaders/l;

.field b:Lse/emilsjolander/stickylistheaders/b;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/Context;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:I

.field private g:Landroid/database/DataSetObserver;


# direct methods
.method constructor <init>(Landroid/content/Context;Lse/emilsjolander/stickylistheaders/l;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->c:Ljava/util/List;

    .line 38
    new-instance v0, Lse/emilsjolander/stickylistheaders/a$1;

    invoke-direct {v0, p0}, Lse/emilsjolander/stickylistheaders/a$1;-><init>(Lse/emilsjolander/stickylistheaders/a;)V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->g:Landroid/database/DataSetObserver;

    .line 54
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/a;->d:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/l;

    .line 56
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->g:Landroid/database/DataSetObserver;

    invoke-interface {p2, v0}, Lse/emilsjolander/stickylistheaders/l;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 57
    return-void
.end method

.method static synthetic a(Lse/emilsjolander/stickylistheaders/a;)Ljava/util/List;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lse/emilsjolander/stickylistheaders/a;)V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method static synthetic c(Lse/emilsjolander/stickylistheaders/a;)V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public final a(I)J
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/l;

    invoke-interface {v0, p1}, Lse/emilsjolander/stickylistheaders/l;->a(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/l;

    invoke-interface {v0, p1, p2, p3}, Lse/emilsjolander/stickylistheaders/l;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method final a(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/a;->e:Landroid/graphics/drawable/Drawable;

    .line 61
    iput p2, p0, Lse/emilsjolander/stickylistheaders/a;->f:I

    .line 62
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/a;->notifyDataSetChanged()V

    .line 63
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/l;

    invoke-interface {v0}, Lse/emilsjolander/stickylistheaders/l;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/l;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/l;

    invoke-interface {v0}, Lse/emilsjolander/stickylistheaders/l;->getCount()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/l;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/l;

    invoke-interface {v0, p1}, Lse/emilsjolander/stickylistheaders/l;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/l;

    invoke-interface {v0, p1}, Lse/emilsjolander/stickylistheaders/l;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/l;

    invoke-interface {v0, p1}, Lse/emilsjolander/stickylistheaders/l;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public synthetic getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 26
    .line 1163
    if-nez p2, :cond_2

    new-instance p2, Lse/emilsjolander/stickylistheaders/t;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/a;->d:Landroid/content/Context;

    invoke-direct {p2, v1}, Lse/emilsjolander/stickylistheaders/t;-><init>(Landroid/content/Context;)V

    .line 1164
    :goto_0
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/l;

    iget-object v4, p2, Lse/emilsjolander/stickylistheaders/t;->a:Landroid/view/View;

    invoke-interface {v1, p1, v4, p3}, Lse/emilsjolander/stickylistheaders/l;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2156
    if-eqz p1, :cond_3

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/l;

    .line 2157
    invoke-interface {v1, p1}, Lse/emilsjolander/stickylistheaders/l;->a(I)J

    move-result-wide v6

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/l;

    add-int/lit8 v5, p1, -0x1

    .line 2158
    invoke-interface {v1, v5}, Lse/emilsjolander/stickylistheaders/l;->a(I)J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-nez v1, :cond_3

    move v1, v2

    .line 1166
    :goto_1
    if-eqz v1, :cond_4

    .line 3114
    iget-object v1, p2, Lse/emilsjolander/stickylistheaders/t;->d:Landroid/view/View;

    .line 3115
    if-eqz v1, :cond_0

    .line 3117
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3118
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/a;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v1, v0

    .line 1171
    :goto_2
    instance-of v0, v4, Landroid/widget/Checkable;

    if-eqz v0, :cond_8

    instance-of v0, p2, Lse/emilsjolander/stickylistheaders/c;

    if-nez v0, :cond_8

    .line 1173
    new-instance p2, Lse/emilsjolander/stickylistheaders/c;

    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->d:Landroid/content/Context;

    invoke-direct {p2, v0}, Lse/emilsjolander/stickylistheaders/c;-><init>(Landroid/content/Context;)V

    .line 1177
    :cond_1
    :goto_3
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/a;->e:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lse/emilsjolander/stickylistheaders/a;->f:I

    .line 4044
    if-nez v4, :cond_9

    .line 4045
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "List view item must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1163
    :cond_2
    check-cast p2, Lse/emilsjolander/stickylistheaders/t;

    goto :goto_0

    :cond_3
    move v1, v3

    .line 2158
    goto :goto_1

    .line 3127
    :cond_4
    iget-object v1, p2, Lse/emilsjolander/stickylistheaders/t;->d:Landroid/view/View;

    if-nez v1, :cond_6

    .line 3148
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 3149
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3128
    :cond_5
    :goto_4
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/l;

    invoke-interface {v1, p1, v0, p2}, Lse/emilsjolander/stickylistheaders/l;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3129
    if-nez v0, :cond_7

    .line 3130
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Header view must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3127
    :cond_6
    iget-object v0, p2, Lse/emilsjolander/stickylistheaders/t;->d:Landroid/view/View;

    goto :goto_4

    .line 3133
    :cond_7
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 3134
    new-instance v1, Lse/emilsjolander/stickylistheaders/a$2;

    invoke-direct {v1, p0, p1}, Lse/emilsjolander/stickylistheaders/a$2;-><init>(Lse/emilsjolander/stickylistheaders/a;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v1, v0

    goto :goto_2

    .line 1174
    :cond_8
    instance-of v0, v4, Landroid/widget/Checkable;

    if-nez v0, :cond_1

    instance-of v0, p2, Lse/emilsjolander/stickylistheaders/c;

    if-eqz v0, :cond_1

    .line 1175
    new-instance p2, Lse/emilsjolander/stickylistheaders/t;

    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->d:Landroid/content/Context;

    invoke-direct {p2, v0}, Lse/emilsjolander/stickylistheaders/t;-><init>(Landroid/content/Context;)V

    goto :goto_3

    .line 4049
    :cond_9
    iget-object v0, p2, Lse/emilsjolander/stickylistheaders/t;->a:Landroid/view/View;

    if-eq v0, v4, :cond_b

    .line 4050
    iget-object v0, p2, Lse/emilsjolander/stickylistheaders/t;->a:Landroid/view/View;

    invoke-virtual {p2, v0}, Lse/emilsjolander/stickylistheaders/t;->removeView(Landroid/view/View;)V

    .line 4051
    iput-object v4, p2, Lse/emilsjolander/stickylistheaders/t;->a:Landroid/view/View;

    .line 4052
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4053
    if-eqz v0, :cond_a

    if-eq v0, p2, :cond_a

    .line 4054
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_a

    .line 4055
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4058
    :cond_a
    invoke-virtual {p2, v4}, Lse/emilsjolander/stickylistheaders/t;->addView(Landroid/view/View;)V

    .line 4062
    :cond_b
    iget-object v0, p2, Lse/emilsjolander/stickylistheaders/t;->d:Landroid/view/View;

    if-eq v0, v1, :cond_d

    .line 4063
    iget-object v0, p2, Lse/emilsjolander/stickylistheaders/t;->d:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 4064
    iget-object v0, p2, Lse/emilsjolander/stickylistheaders/t;->d:Landroid/view/View;

    invoke-virtual {p2, v0}, Lse/emilsjolander/stickylistheaders/t;->removeView(Landroid/view/View;)V

    .line 4066
    :cond_c
    iput-object v1, p2, Lse/emilsjolander/stickylistheaders/t;->d:Landroid/view/View;

    .line 4067
    if-eqz v1, :cond_d

    .line 4068
    invoke-virtual {p2, v1}, Lse/emilsjolander/stickylistheaders/t;->addView(Landroid/view/View;)V

    .line 4072
    :cond_d
    iget-object v0, p2, Lse/emilsjolander/stickylistheaders/t;->b:Landroid/graphics/drawable/Drawable;

    if-eq v0, v2, :cond_e

    .line 4073
    iput-object v2, p2, Lse/emilsjolander/stickylistheaders/t;->b:Landroid/graphics/drawable/Drawable;

    .line 4074
    iput v3, p2, Lse/emilsjolander/stickylistheaders/t;->c:I

    .line 4075
    invoke-virtual {p2}, Lse/emilsjolander/stickylistheaders/t;->invalidate()V

    .line 26
    :cond_e
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/l;

    invoke-interface {v0}, Lse/emilsjolander/stickylistheaders/l;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/l;

    invoke-interface {v0}, Lse/emilsjolander/stickylistheaders/l;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/l;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/l;

    invoke-interface {v0}, Lse/emilsjolander/stickylistheaders/l;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/l;

    invoke-interface {v0, p1}, Lse/emilsjolander/stickylistheaders/l;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/l;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 203
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/l;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 208
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/l;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
