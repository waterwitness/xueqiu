.class final Lu/aly/fj;
.super Lu/aly/gk;
.source "TUnion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gk",
        "<",
        "Lu/aly/fi;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Lu/aly/gk;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Lu/aly/fj;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1
    check-cast p2, Lu/aly/fi;

    .line 1220
    iput-object v0, p2, Lu/aly/fi;->c:Lu/aly/fg;

    .line 1221
    iput-object v0, p2, Lu/aly/fi;->b:Ljava/lang/Object;

    .line 1223
    invoke-virtual {p1}, Lu/aly/ga;->d()Lu/aly/gg;

    .line 1225
    invoke-virtual {p1}, Lu/aly/ga;->f()Lu/aly/fx;

    move-result-object v0

    .line 1227
    invoke-virtual {p2, p1, v0}, Lu/aly/fi;->a(Lu/aly/ga;Lu/aly/fx;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p2, Lu/aly/fi;->b:Ljava/lang/Object;

    .line 1228
    iget-object v1, p2, Lu/aly/fi;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1229
    iget-short v0, v0, Lu/aly/fx;->c:S

    invoke-virtual {p2, v0}, Lu/aly/fi;->a(S)Lu/aly/fg;

    move-result-object v0

    iput-object v0, p2, Lu/aly/fi;->c:Lu/aly/fg;

    .line 1236
    :cond_0
    invoke-virtual {p1}, Lu/aly/ga;->f()Lu/aly/fx;

    .line 1237
    invoke-virtual {p1}, Lu/aly/ga;->e()V

    .line 1
    return-void
.end method

.method public final synthetic b(Lu/aly/ga;Lu/aly/fa;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/fi;

    .line 1242
    invoke-virtual {p2}, Lu/aly/fi;->b()Lu/aly/fg;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lu/aly/fi;->c()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1243
    :cond_0
    new-instance v0, Lu/aly/gb;

    const-string v1, "Cannot write a TUnion with no set value!"

    invoke-direct {v0, v1}, Lu/aly/gb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1245
    :cond_1
    invoke-virtual {p2}, Lu/aly/fi;->a()Lu/aly/gg;

    invoke-virtual {p1}, Lu/aly/ga;->a()V

    .line 1246
    iget-object v0, p2, Lu/aly/fi;->c:Lu/aly/fg;

    invoke-virtual {p2, v0}, Lu/aly/fi;->a(Lu/aly/fg;)Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 1247
    invoke-virtual {p2, p1}, Lu/aly/fi;->c(Lu/aly/ga;)V

    .line 1249
    invoke-virtual {p1}, Lu/aly/ga;->c()V

    .line 1250
    invoke-virtual {p1}, Lu/aly/ga;->b()V

    .line 1
    return-void
.end method
