.class public final Lit/sephiroth/android/library/imagezoom/e;
.super Ljava/lang/Enum;
.source "ImageViewTouchBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lit/sephiroth/android/library/imagezoom/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field private static final synthetic d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 59
    sput v3, Lit/sephiroth/android/library/imagezoom/e;->a:I

    .line 61
    sput v4, Lit/sephiroth/android/library/imagezoom/e;->b:I

    .line 63
    sput v0, Lit/sephiroth/android/library/imagezoom/e;->c:I

    .line 57
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lit/sephiroth/android/library/imagezoom/e;->a:I

    aput v2, v0, v1

    sget v1, Lit/sephiroth/android/library/imagezoom/e;->b:I

    aput v1, v0, v3

    sget v1, Lit/sephiroth/android/library/imagezoom/e;->c:I

    aput v1, v0, v4

    sput-object v0, Lit/sephiroth/android/library/imagezoom/e;->d:[I

    return-void
.end method
