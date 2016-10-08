.class final Lu/aly/gv$1;
.super Lcom/umeng/analytics/f;
.source "CacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/aly/gv;->a(Lu/aly/ha;)V
.end annotation


# instance fields
.field final synthetic a:Lu/aly/gv;

.field private final synthetic b:Lu/aly/ha;


# direct methods
.method constructor <init>(Lu/aly/gv;Lu/aly/ha;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lu/aly/gv$1;->a:Lu/aly/gv;

    iput-object p2, p0, Lu/aly/gv$1;->b:Lu/aly/ha;

    .line 40
    invoke-direct {p0}, Lcom/umeng/analytics/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lu/aly/gv$1;->a:Lu/aly/gv;

    .line 1011
    iget-object v0, v0, Lu/aly/gv;->a:Lu/aly/gz;

    .line 42
    iget-object v1, p0, Lu/aly/gv$1;->b:Lu/aly/ha;

    invoke-interface {v0, v1}, Lu/aly/gz;->a(Lu/aly/ha;)V

    .line 43
    return-void
.end method
