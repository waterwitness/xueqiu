.class final Lcom/a/a/n;
.super Ljava/lang/Object;
.source "SpiralLoopManager.java"


# instance fields
.field private a:Lcom/a/a/o;


# direct methods
.method public constructor <init>(Lcom/a/a/o;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/a/a/n;->a:Lcom/a/a/o;

    .line 67
    return-void
.end method

.method private static b(IIII)Z
    .locals 1

    .prologue
    .line 113
    if-ltz p0, :cond_0

    if-ge p0, p2, :cond_0

    if-ltz p1, :cond_0

    if-ge p1, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(IIII)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 71
    mul-int v7, p2, p1

    .line 79
    iget-object v1, p0, Lcom/a/a/n;->a:Lcom/a/a/o;

    invoke-interface {v1, p3, p4}, Lcom/a/a/o;->a(II)Z

    move v5, v0

    move v6, v0

    move v1, p4

    move v3, p3

    .line 82
    :goto_0
    if-ge v0, v7, :cond_0

    move v4, v3

    move v3, v2

    .line 85
    :goto_1
    if-ge v3, v6, :cond_2

    .line 86
    add-int/2addr v4, v5

    .line 87
    invoke-static {v4, v1, p1, p2}, Lcom/a/a/n;->b(IIII)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 88
    add-int/lit8 v0, v0, 0x1

    .line 89
    iget-object v8, p0, Lcom/a/a/n;->a:Lcom/a/a/o;

    invoke-interface {v8, v4, v1}, Lcom/a/a/o;->a(II)Z

    move-result v8

    .line 90
    if-nez v8, :cond_1

    .line 110
    :cond_0
    return-void

    .line 85
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v1

    move v1, v2

    .line 95
    :goto_2
    if-ge v1, v6, :cond_4

    .line 96
    add-int/2addr v3, v5

    .line 97
    invoke-static {v4, v3, p1, p2}, Lcom/a/a/n;->b(IIII)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 98
    add-int/lit8 v0, v0, 0x1

    .line 99
    iget-object v8, p0, Lcom/a/a/n;->a:Lcom/a/a/o;

    invoke-interface {v8, v4, v3}, Lcom/a/a/o;->a(II)Z

    move-result v8

    .line 100
    if-eqz v8, :cond_0

    .line 95
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 105
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 108
    mul-int/lit8 v1, v5, -0x1

    move v5, v1

    move v1, v3

    move v3, v4

    goto :goto_0
.end method
