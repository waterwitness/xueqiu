.class public final Lcom/d/a/b/a/c;
.super Ljava/lang/Enum;
.source "FailReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/d/a/b/a/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field public static final enum d:I

.field public static final enum e:I

.field private static final synthetic f:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v0, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 48
    sput v3, Lcom/d/a/b/a/c;->a:I

    .line 54
    sput v4, Lcom/d/a/b/a/c;->b:I

    .line 59
    sput v5, Lcom/d/a/b/a/c;->c:I

    .line 61
    sput v6, Lcom/d/a/b/a/c;->d:I

    .line 63
    sput v0, Lcom/d/a/b/a/c;->e:I

    .line 46
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/d/a/b/a/c;->a:I

    aput v2, v0, v1

    sget v1, Lcom/d/a/b/a/c;->b:I

    aput v1, v0, v3

    sget v1, Lcom/d/a/b/a/c;->c:I

    aput v1, v0, v4

    sget v1, Lcom/d/a/b/a/c;->d:I

    aput v1, v0, v5

    sget v1, Lcom/d/a/b/a/c;->e:I

    aput v1, v0, v6

    sput-object v0, Lcom/d/a/b/a/c;->f:[I

    return-void
.end method
