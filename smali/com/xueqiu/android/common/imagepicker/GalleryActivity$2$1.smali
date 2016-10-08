.class final Lcom/xueqiu/android/common/imagepicker/GalleryActivity$2$1;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/imagepicker/GalleryActivity$2;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/xueqiu/android/common/imagepicker/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/imagepicker/GalleryActivity$2;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/imagepicker/GalleryActivity$2;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/xueqiu/android/common/imagepicker/GalleryActivity$2$1;->a:Lcom/xueqiu/android/common/imagepicker/GalleryActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 120
    check-cast p1, Lcom/xueqiu/android/common/imagepicker/c;

    check-cast p2, Lcom/xueqiu/android/common/imagepicker/c;

    .line 2074
    iget-wide v0, p1, Lcom/xueqiu/android/common/imagepicker/c;->g:J

    .line 3074
    iget-wide v2, p2, Lcom/xueqiu/android/common/imagepicker/c;->g:J

    .line 1123
    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1124
    const/4 v0, 0x1

    .line 1126
    :goto_0
    return v0

    .line 4074
    :cond_0
    iget-wide v0, p1, Lcom/xueqiu/android/common/imagepicker/c;->g:J

    .line 5074
    iget-wide v2, p2, Lcom/xueqiu/android/common/imagepicker/c;->g:J

    .line 1125
    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1126
    const/4 v0, -0x1

    goto :goto_0

    .line 1128
    :cond_1
    const/4 v0, 0x0

    .line 120
    goto :goto_0
.end method
