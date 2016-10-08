.class public final Lcom/xueqiu/android/common/widget/an;
.super Ljava/lang/Object;
.source "ShareSheet.java"


# instance fields
.field public a:Lcom/xueqiu/android/community/model/Status;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Landroid/graphics/Bitmap;

.field public g:Landroid/graphics/Bitmap;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Z

.field public k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1093
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1052
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/an;->h:Ljava/lang/String;

    .line 1053
    const/4 v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/common/widget/an;->i:I

    .line 1054
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/an;->j:Z

    .line 1072
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/an;->k:Ljava/util/Map;

    .line 1082
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/an;->l:Ljava/util/Map;

    .line 1094
    return-void
.end method
