.class public final Lu/aly/g;
.super Lu/aly/dn;
.source "USession.java"

# interfaces
.implements Lu/aly/ha;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lu/aly/dn;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lu/aly/dz;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 12
    .line 1414
    iget-object v0, p1, Lu/aly/dz;->g:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lu/aly/dz;->g:Ljava/util/List;

    .line 1417
    :cond_0
    iget-object v0, p1, Lu/aly/dz;->g:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    return-void
.end method
