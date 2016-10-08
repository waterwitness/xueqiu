.class public Lcom/xueqiu/android/common/imagepicker/GalleryActivity;
.super Lcom/xueqiu/android/common/b;
.source "GalleryActivity.java"


# static fields
.field private static final q:[Ljava/lang/String;


# instance fields
.field protected j:Landroid/widget/ListView;

.field protected k:Lcom/xueqiu/android/common/imagepicker/a;

.field protected p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/common/imagepicker/c;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "bucket_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xueqiu/android/common/imagepicker/GalleryActivity;->q:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method

.method static synthetic j()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/xueqiu/android/common/imagepicker/GalleryActivity;->q:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 148
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 149
    if-ne p2, v1, :cond_0

    .line 150
    invoke-virtual {p0, v1, p3}, Lcom/xueqiu/android/common/imagepicker/GalleryActivity;->setResult(ILandroid/content/Intent;)V

    .line 151
    invoke-virtual {p0}, Lcom/xueqiu/android/common/imagepicker/GalleryActivity;->finish()V

    .line 154
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 155
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 54
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/imagepicker/GalleryActivity;->setContentView(I)V

    .line 56
    const v0, 0x7f0e0131

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/imagepicker/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xueqiu/android/common/imagepicker/GalleryActivity;->j:Landroid/widget/ListView;

    .line 57
    new-instance v0, Lcom/xueqiu/android/common/imagepicker/a;

    .line 58
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, p0, v1, v2}, Lcom/xueqiu/android/common/imagepicker/a;-><init>(Landroid/content/Context;Lcom/d/a/b/f;[I)V

    iput-object v0, p0, Lcom/xueqiu/android/common/imagepicker/GalleryActivity;->k:Lcom/xueqiu/android/common/imagepicker/a;

    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/GalleryActivity;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/common/imagepicker/GalleryActivity;->k:Lcom/xueqiu/android/common/imagepicker/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/GalleryActivity;->j:Landroid/widget/ListView;

    new-instance v1, Lcom/xueqiu/android/common/imagepicker/GalleryActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/imagepicker/GalleryActivity$1;-><init>(Lcom/xueqiu/android/common/imagepicker/GalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1772
    iget-object v0, p0, Landroid/support/v4/a/k;->b:Landroid/support/v4/a/o;

    .line 2065
    iget-object v0, v0, Landroid/support/v4/a/o;->a:Landroid/support/v4/a/p;

    .line 2178
    iget-object v1, v0, Landroid/support/v4/a/p;->h:Landroid/support/v4/a/ai;

    if-eqz v1, :cond_0

    .line 2179
    iget-object v0, v0, Landroid/support/v4/a/p;->h:Landroid/support/v4/a/ai;

    .line 73
    :goto_0
    new-instance v1, Lcom/xueqiu/android/common/imagepicker/GalleryActivity$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/imagepicker/GalleryActivity$2;-><init>(Lcom/xueqiu/android/common/imagepicker/GalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/a/ag;->a(Landroid/support/v4/a/ah;)Landroid/support/v4/content/n;

    .line 144
    return-void

    .line 2181
    :cond_0
    iput-boolean v3, v0, Landroid/support/v4/a/p;->i:Z

    .line 2182
    const-string v1, "(root)"

    iget-boolean v2, v0, Landroid/support/v4/a/p;->j:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/a/p;->a(Ljava/lang/String;ZZ)Landroid/support/v4/a/ai;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/a/p;->h:Landroid/support/v4/a/ai;

    .line 2183
    iget-object v0, v0, Landroid/support/v4/a/p;->h:Landroid/support/v4/a/ai;

    goto :goto_0

    .line 58
    nop

    :array_0
    .array-data 4
        0x7f0e0344
        0x7f0e00a1
        0x7f0e0345
    .end array-data
.end method
