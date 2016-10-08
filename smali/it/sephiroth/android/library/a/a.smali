.class public final Lit/sephiroth/android/library/a/a;
.super Ljava/lang/Object;
.source "Cubic.java"

# interfaces
.implements Lit/sephiroth/android/library/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(DDD)D
    .locals 7

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 7
    div-double v0, p1, p5

    sub-double/2addr v0, v4

    mul-double v2, v0, v0

    mul-double/2addr v0, v2

    add-double/2addr v0, v4

    mul-double/2addr v0, p3

    const-wide/16 v2, 0x0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final b(DDD)D
    .locals 7

    .prologue
    .line 17
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v0, p5, v0

    div-double v0, p1, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v2, p3, v2

    mul-double/2addr v2, v0

    mul-double/2addr v2, v0

    mul-double/2addr v0, v2

    const-wide/16 v2, 0x0

    add-double/2addr v0, v2

    .line 18
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v2, p3, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-double/2addr v0, v4

    mul-double v4, v0, v0

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    add-double/2addr v0, v4

    mul-double/2addr v0, v2

    const-wide/16 v2, 0x0

    add-double/2addr v0, v2

    goto :goto_0
.end method
