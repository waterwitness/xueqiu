.class public final Lu/aly/fe;
.super Ljava/lang/Object;
.source "TDeserializer.java"


# instance fields
.field private final a:Lu/aly/ga;

.field private final b:Lu/aly/gn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lu/aly/fw;

    invoke-direct {v0}, Lu/aly/fw;-><init>()V

    invoke-direct {p0, v0}, Lu/aly/fe;-><init>(Lu/aly/gd;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lu/aly/gd;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lu/aly/gn;

    invoke-direct {v0}, Lu/aly/gn;-><init>()V

    iput-object v0, p0, Lu/aly/fe;->b:Lu/aly/gn;

    .line 59
    iget-object v0, p0, Lu/aly/fe;->b:Lu/aly/gn;

    invoke-interface {p1, v0}, Lu/aly/gd;->a(Lu/aly/go;)Lu/aly/ga;

    move-result-object v0

    iput-object v0, p0, Lu/aly/fe;->a:Lu/aly/ga;

    .line 60
    return-void
.end method


# virtual methods
.method public final a(Lu/aly/fa;[B)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 70
    :try_start_0
    iget-object v0, p0, Lu/aly/fe;->b:Lu/aly/gn;

    .line 1039
    array-length v1, p2

    .line 1043
    iput-object p2, v0, Lu/aly/gn;->a:[B

    .line 1044
    const/4 v2, 0x0

    iput v2, v0, Lu/aly/gn;->b:I

    .line 1045
    add-int/lit8 v1, v1, 0x0

    iput v1, v0, Lu/aly/gn;->c:I

    .line 71
    iget-object v0, p0, Lu/aly/fe;->a:Lu/aly/ga;

    invoke-interface {p1, v0}, Lu/aly/fa;->a(Lu/aly/ga;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iget-object v0, p0, Lu/aly/fe;->b:Lu/aly/gn;

    .line 2049
    iput-object v3, v0, Lu/aly/gn;->a:[B

    .line 74
    iget-object v0, p0, Lu/aly/fe;->a:Lu/aly/ga;

    invoke-virtual {v0}, Lu/aly/ga;->r()V

    .line 76
    return-void

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    iget-object v1, p0, Lu/aly/fe;->b:Lu/aly/gn;

    .line 1049
    iput-object v3, v1, Lu/aly/gn;->a:[B

    .line 74
    iget-object v1, p0, Lu/aly/fe;->a:Lu/aly/ga;

    invoke-virtual {v1}, Lu/aly/ga;->r()V

    .line 75
    throw v0
.end method
