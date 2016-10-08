.class final Lcom/tencent/record/debug/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/tencent/record/debug/FileTracerConfig;


# direct methods
.method constructor <init>(Lcom/tencent/record/debug/FileTracerConfig;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/tencent/record/debug/c;->a:Lcom/tencent/record/debug/FileTracerConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 157
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    .line 1162
    invoke-static {p1}, Lcom/tencent/record/debug/FileTracerConfig;->d(Ljava/io/File;)I

    move-result v0

    invoke-static {p2}, Lcom/tencent/record/debug/FileTracerConfig;->d(Ljava/io/File;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 157
    return v0
.end method
