.class public final Lcom/xueqiu/android/message/a/u;
.super Landroid/widget/BaseAdapter;
.source "SearchAdapter.java"

# interfaces
.implements Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/a/y;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/content/Context;

.field private i:Landroid/view/LayoutInflater;

.field private j:Lcom/d/a/b/f;

.field private k:Lcom/d/a/b/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/d/a/b/f;)V
    .locals 2

    .prologue
    const v1, 0x7f020488

    .line 67
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/xueqiu/android/message/a/u;->h:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/xueqiu/android/message/a/u;->j:Lcom/d/a/b/f;

    .line 70
    const v0, 0x7f0300cc

    iput v0, p0, Lcom/xueqiu/android/message/a/u;->b:I

    .line 71
    const v0, 0x7f030172

    iput v0, p0, Lcom/xueqiu/android/message/a/u;->c:I

    .line 72
    const v0, 0x7f0e0130

    iput v0, p0, Lcom/xueqiu/android/message/a/u;->g:I

    .line 73
    const v0, 0x7f0e0550

    iput v0, p0, Lcom/xueqiu/android/message/a/u;->e:I

    .line 74
    const v0, 0x7f0e00a1

    iput v0, p0, Lcom/xueqiu/android/message/a/u;->d:I

    .line 75
    const v0, 0x7f0e0209

    iput v0, p0, Lcom/xueqiu/android/message/a/u;->f:I

    .line 76
    iget-object v0, p0, Lcom/xueqiu/android/message/a/u;->h:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/a/u;->i:Landroid/view/LayoutInflater;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/message/a/u;->a:Ljava/util/List;

    .line 78
    new-instance v0, Lcom/d/a/b/e;

    invoke-direct {v0}, Lcom/d/a/b/e;-><init>()V

    .line 1248
    iput v1, v0, Lcom/d/a/b/e;->a:I

    .line 1270
    iput v1, v0, Lcom/d/a/b/e;->b:I

    .line 1293
    iput v1, v0, Lcom/d/a/b/e;->c:I

    .line 1341
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/d/a/b/e;->h:Z

    .line 83
    invoke-virtual {v0}, Lcom/d/a/b/e;->a()Lcom/d/a/b/e;

    move-result-object v0

    .line 1415
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/d/a/b/e;->m:Z

    .line 85
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/a/u;->k:Lcom/d/a/b/d;

    .line 86
    return-void
.end method

.method private a(I)Lcom/xueqiu/android/message/a/y;
    .locals 4

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 154
    iget-object v1, p0, Lcom/xueqiu/android/message/a/u;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/a/y;

    .line 155
    if-lt p1, v1, :cond_0

    .line 7206
    iget-object v3, v0, Lcom/xueqiu/android/message/a/y;->a:Ljava/util/List;

    .line 155
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v1

    if-ge p1, v3, :cond_0

    .line 160
    :goto_1
    return-object v0

    .line 8206
    :cond_0
    iget-object v0, v0, Lcom/xueqiu/android/message/a/y;->a:Ljava/util/List;

    .line 158
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 159
    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/message/a/u;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/xueqiu/android/message/a/u;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/a/y;

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/a/y;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Lcom/xueqiu/android/message/a/u$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/message/a/u$1;-><init>(Lcom/xueqiu/android/message/a/u;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 174
    iput-object p1, p0, Lcom/xueqiu/android/message/a/u;->a:Ljava/util/List;

    .line 175
    return-void
.end method

.method public final getCount()I
    .locals 3

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    iget-object v1, p0, Lcom/xueqiu/android/message/a/u;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/a/y;

    .line 3206
    iget-object v0, v0, Lcom/xueqiu/android/message/a/y;->a:Ljava/util/List;

    .line 110
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 111
    goto :goto_0

    .line 112
    :cond_0
    return v1
.end method

.method public final getHeaderId(I)J
    .locals 2

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/xueqiu/android/message/a/u;->a(I)Lcom/xueqiu/android/message/a/y;

    move-result-object v0

    .line 2222
    iget v0, v0, Lcom/xueqiu/android/message/a/y;->c:I

    .line 103
    int-to-long v0, v0

    return-wide v0
.end method

.method public final getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    if-nez p2, :cond_0

    .line 91
    iget-object v0, p0, Lcom/xueqiu/android/message/a/u;->i:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/xueqiu/android/message/a/u;->b:I

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 92
    new-instance v1, Lcom/xueqiu/android/message/a/v;

    invoke-direct {v1, p0, v2}, Lcom/xueqiu/android/message/a/v;-><init>(Lcom/xueqiu/android/message/a/u;B)V

    .line 93
    iget v0, p0, Lcom/xueqiu/android/message/a/u;->g:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/v;->a:Landroid/widget/TextView;

    .line 94
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 96
    :cond_0
    invoke-direct {p0, p1}, Lcom/xueqiu/android/message/a/u;->a(I)Lcom/xueqiu/android/message/a/y;

    move-result-object v1

    .line 97
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/a/v;

    iget-object v0, v0, Lcom/xueqiu/android/message/a/v;->a:Landroid/widget/TextView;

    .line 2214
    iget-object v1, v1, Lcom/xueqiu/android/message/a/y;->b:Ljava/lang/String;

    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    return-object p2
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/xueqiu/android/message/a/u;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/a/y;

    .line 118
    if-ltz p1, :cond_0

    .line 4206
    iget-object v2, v0, Lcom/xueqiu/android/message/a/y;->a:Ljava/util/List;

    .line 118
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 5206
    iget-object v0, v0, Lcom/xueqiu/android/message/a/y;->a:Ljava/util/List;

    .line 119
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 123
    :goto_1
    return-object v0

    .line 6206
    :cond_0
    iget-object v0, v0, Lcom/xueqiu/android/message/a/y;->a:Ljava/util/List;

    .line 121
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 122
    goto :goto_0

    .line 123
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 128
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 133
    if-nez p2, :cond_0

    .line 134
    iget-object v0, p0, Lcom/xueqiu/android/message/a/u;->i:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/xueqiu/android/message/a/u;->c:I

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 135
    new-instance v1, Lcom/xueqiu/android/message/a/w;

    invoke-direct {v1, p0, v2}, Lcom/xueqiu/android/message/a/w;-><init>(Lcom/xueqiu/android/message/a/u;B)V

    .line 136
    iget v0, p0, Lcom/xueqiu/android/message/a/u;->e:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/w;->c:Landroid/widget/ImageView;

    .line 137
    iget v0, p0, Lcom/xueqiu/android/message/a/u;->d:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/w;->a:Landroid/widget/TextView;

    .line 138
    iget v0, p0, Lcom/xueqiu/android/message/a/u;->f:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/w;->b:Landroid/widget/TextView;

    .line 139
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 142
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/a/w;

    .line 143
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/message/a/u;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/message/a/x;

    .line 144
    if-eqz v1, :cond_1

    .line 145
    iget-object v2, p0, Lcom/xueqiu/android/message/a/u;->j:Lcom/d/a/b/f;

    .line 6247
    iget-object v3, v1, Lcom/xueqiu/android/message/a/x;->a:Ljava/lang/String;

    .line 145
    iget-object v4, v0, Lcom/xueqiu/android/message/a/w;->c:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/xueqiu/android/message/a/u;->k:Lcom/d/a/b/d;

    invoke-virtual {v2, v3, v4, v5}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 146
    iget-object v2, v0, Lcom/xueqiu/android/message/a/w;->a:Landroid/widget/TextView;

    .line 6255
    iget-object v3, v1, Lcom/xueqiu/android/message/a/x;->b:Ljava/lang/String;

    .line 146
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, v0, Lcom/xueqiu/android/message/a/w;->b:Landroid/widget/TextView;

    .line 6263
    iget-object v1, v1, Lcom/xueqiu/android/message/a/x;->c:Ljava/lang/String;

    .line 147
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :cond_1
    return-object p2
.end method
