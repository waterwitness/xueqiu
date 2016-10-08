.class public final Lcom/e/a/a/a/b;
.super Lcom/e/a/a/a/a;
.source "ByteArrayBody.java"


# instance fields
.field private final b:[B

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>([BLcom/e/a/a;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p2}, Lcom/e/a/a/a/a;-><init>(Lcom/e/a/a;)V

    .line 57
    const-string v0, "byte[]"

    invoke-static {p1, v0}, Lcom/e/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    iput-object p1, p0, Lcom/e/a/a/a/b;->b:[B

    .line 59
    iput-object p3, p0, Lcom/e/a/a/a/b;->c:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 1

    .prologue
    .line 69
    const-string v0, "application/octet-stream"

    invoke-direct {p0, p1, v0, p2}, Lcom/e/a/a/a/b;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method private constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 49
    invoke-static {p2}, Lcom/e/a/a;->a(Ljava/lang/String;)Lcom/e/a/a;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/e/a/a/a/b;-><init>([BLcom/e/a/a;Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/e/a/a/a/b;->b:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 78
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/e/a/a/a/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "binary"

    return-object v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/e/a/a/a/b;->b:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method
