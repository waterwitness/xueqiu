.class public Landroid/support/v4/a/i;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;


# static fields
.field private static final a:Landroid/support/v4/e/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/n",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field static final j:Ljava/lang/Object;


# instance fields
.field A:Z

.field B:I

.field public C:Landroid/support/v4/a/r;

.field D:Landroid/support/v4/a/p;

.field E:Landroid/support/v4/a/r;

.field public F:Landroid/support/v4/a/i;

.field G:I

.field H:I

.field I:Ljava/lang/String;

.field public J:Z

.field K:Z

.field L:Z

.field M:Z

.field N:Z

.field O:Z

.field P:Z

.field Q:Z

.field R:I

.field S:Landroid/view/ViewGroup;

.field public T:Landroid/view/View;

.field U:Landroid/view/View;

.field V:Z

.field W:Z

.field X:Landroid/support/v4/a/ai;

.field Y:Z

.field Z:Z

.field aa:Ljava/lang/Object;

.field ab:Ljava/lang/Object;

.field ac:Ljava/lang/Object;

.field ad:Ljava/lang/Object;

.field ae:Ljava/lang/Object;

.field af:Ljava/lang/Object;

.field ag:Ljava/lang/Boolean;

.field ah:Ljava/lang/Boolean;

.field ai:Landroid/support/v4/a/cf;

.field aj:Landroid/support/v4/a/cf;

.field k:I

.field l:Landroid/view/View;

.field m:I

.field n:Landroid/os/Bundle;

.field o:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field p:I

.field q:Ljava/lang/String;

.field public r:Landroid/os/Bundle;

.field s:Landroid/support/v4/a/i;

.field t:I

.field u:I

.field v:Z

.field w:Z

.field public x:Z

.field y:Z

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 169
    new-instance v0, Landroid/support/v4/e/n;

    invoke-direct {v0}, Landroid/support/v4/e/n;-><init>()V

    sput-object v0, Landroid/support/v4/a/i;->a:Landroid/support/v4/e/n;

    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/a/i;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/a/i;->k:I

    .line 197
    iput v2, p0, Landroid/support/v4/a/i;->p:I

    .line 209
    iput v2, p0, Landroid/support/v4/a/i;->t:I

    .line 283
    iput-boolean v3, p0, Landroid/support/v4/a/i;->P:Z

    .line 305
    iput-boolean v3, p0, Landroid/support/v4/a/i;->W:Z

    .line 311
    iput-object v1, p0, Landroid/support/v4/a/i;->aa:Ljava/lang/Object;

    .line 312
    sget-object v0, Landroid/support/v4/a/i;->j:Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/a/i;->ab:Ljava/lang/Object;

    .line 313
    iput-object v1, p0, Landroid/support/v4/a/i;->ac:Ljava/lang/Object;

    .line 314
    sget-object v0, Landroid/support/v4/a/i;->j:Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/a/i;->ad:Ljava/lang/Object;

    .line 315
    iput-object v1, p0, Landroid/support/v4/a/i;->ae:Ljava/lang/Object;

    .line 316
    sget-object v0, Landroid/support/v4/a/i;->j:Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/a/i;->af:Ljava/lang/Object;

    .line 320
    iput-object v1, p0, Landroid/support/v4/a/i;->ai:Landroid/support/v4/a/cf;

    .line 321
    iput-object v1, p0, Landroid/support/v4/a/i;->aj:Landroid/support/v4/a/cf;

    .line 394
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/a/i;
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/support/v4/a/i;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/a/i;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/a/i;
    .locals 4
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 420
    :try_start_0
    sget-object v0, Landroid/support/v4/a/i;->a:Landroid/support/v4/e/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/e/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 421
    if-nez v0, :cond_0

    .line 423
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 424
    sget-object v1, Landroid/support/v4/a/i;->a:Landroid/support/v4/e/n;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/e/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 427
    if-eqz p2, :cond_1

    .line 428
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 429
    iput-object p2, v0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 431
    :cond_1
    return-object v0

    .line 432
    :catch_0
    move-exception v0

    .line 433
    new-instance v1, Landroid/support/v4/a/j;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/a/j;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 436
    :catch_1
    move-exception v0

    .line 437
    new-instance v1, Landroid/support/v4/a/j;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/a/j;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 440
    :catch_2
    move-exception v0

    .line 441
    new-instance v1, Landroid/support/v4/a/j;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/a/j;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 457
    :try_start_0
    sget-object v0, Landroid/support/v4/a/i;->a:Landroid/support/v4/e/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/e/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 458
    if-nez v0, :cond_0

    .line 460
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 461
    sget-object v1, Landroid/support/v4/a/i;->a:Landroid/support/v4/e/n;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/e/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    :cond_0
    const-class v1, Landroid/support/v4/a/i;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 465
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static l()V
    .locals 0

    .prologue
    .line 1044
    return-void
.end method

.method public static n()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 1173
    const/4 v0, 0x0

    return-object v0
.end method

.method public static r()V
    .locals 0

    .prologue
    .line 1462
    return-void
.end method


# virtual methods
.method public F_()V
    .locals 1

    .prologue
    .line 1418
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/a/i;->Q:Z

    .line 1419
    return-void
.end method

.method public K_()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1281
    iput-boolean v1, p0, Landroid/support/v4/a/i;->Q:Z

    .line 1283
    iget-boolean v0, p0, Landroid/support/v4/a/i;->Y:Z

    if-nez v0, :cond_1

    .line 1284
    iput-boolean v1, p0, Landroid/support/v4/a/i;->Y:Z

    .line 1285
    iget-boolean v0, p0, Landroid/support/v4/a/i;->Z:Z

    if-nez v0, :cond_0

    .line 1286
    iput-boolean v1, p0, Landroid/support/v4/a/i;->Z:Z

    .line 1287
    iget-object v0, p0, Landroid/support/v4/a/i;->D:Landroid/support/v4/a/p;

    iget-object v1, p0, Landroid/support/v4/a/i;->q:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/a/i;->Y:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/a/p;->a(Ljava/lang/String;ZZ)Landroid/support/v4/a/ai;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/a/i;->X:Landroid/support/v4/a/ai;

    .line 1289
    :cond_0
    iget-object v0, p0, Landroid/support/v4/a/i;->X:Landroid/support/v4/a/ai;

    if-eqz v0, :cond_1

    .line 1290
    iget-object v0, p0, Landroid/support/v4/a/i;->X:Landroid/support/v4/a/ai;

    invoke-virtual {v0}, Landroid/support/v4/a/ai;->b()V

    .line 1293
    :cond_1
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1216
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 664
    invoke-virtual {p0}, Landroid/support/v4/a/i;->h()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final varargs a(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 677
    invoke-virtual {p0}, Landroid/support/v4/a/i;->h()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 948
    return-void
.end method

.method final a(ILandroid/support/v4/a/i;)V
    .locals 2

    .prologue
    .line 483
    iput p1, p0, Landroid/support/v4/a/i;->p:I

    .line 484
    if-eqz p2, :cond_0

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Landroid/support/v4/a/i;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/a/i;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/a/i;->q:Ljava/lang/String;

    .line 489
    :goto_0
    return-void

    .line 487
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android:fragment:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/support/v4/a/i;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/a/i;->q:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1166
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/a/i;->Q:Z

    .line 1167
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1151
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/a/i;->Q:Z

    .line 1152
    iget-object v0, p0, Landroid/support/v4/a/i;->D:Landroid/support/v4/a/p;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1153
    :goto_0
    if-eqz v0, :cond_0

    .line 1154
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/a/i;->Q:Z

    .line 1155
    invoke-virtual {p0, v0}, Landroid/support/v4/a/i;->a(Landroid/app/Activity;)V

    .line 1157
    :cond_0
    return-void

    .line 1152
    :cond_1
    iget-object v0, p0, Landroid/support/v4/a/i;->D:Landroid/support/v4/a/p;

    .line 9162
    iget-object v0, v0, Landroid/support/v4/a/p;->b:Landroid/app/Activity;

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 916
    iget-object v0, p0, Landroid/support/v4/a/i;->D:Landroid/support/v4/a/p;

    if-nez v0, :cond_0

    .line 917
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 919
    :cond_0
    iget-object v0, p0, Landroid/support/v4/a/i;->D:Landroid/support/v4/a/p;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Landroid/support/v4/a/p;->a(Landroid/support/v4/a/i;Landroid/content/Intent;I)V

    .line 920
    return-void
.end method

.method public a(Landroid/content/Intent;I)V
    .locals 3

    .prologue
    .line 927
    iget-object v0, p0, Landroid/support/v4/a/i;->D:Landroid/support/v4/a/p;

    if-nez v0, :cond_0

    .line 928
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 930
    :cond_0
    iget-object v0, p0, Landroid/support/v4/a/i;->D:Landroid/support/v4/a/p;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/a/p;->a(Landroid/support/v4/a/i;Landroid/content/Intent;I)V

    .line 931
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1191
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/a/i;->Q:Z

    .line 1192
    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .prologue
    .line 1435
    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1230
    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 1483
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 1079
    iget-object v0, p0, Landroid/support/v4/a/i;->D:Landroid/support/v4/a/p;

    invoke-virtual {v0}, Landroid/support/v4/a/p;->c()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1080
    invoke-virtual {p0}, Landroid/support/v4/a/i;->i()Landroid/support/v4/a/q;

    .line 1081
    iget-object v1, p0, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    invoke-static {v0, v1}, Landroid/support/v4/view/aa;->a(Landroid/view/LayoutInflater;Landroid/support/v4/view/aj;)V

    .line 1082
    return-object v0
.end method

.method final b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 1962
    iget-object v0, p0, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    if-eqz v0, :cond_0

    .line 1963
    iget-object v0, p0, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    .line 10043
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/a/r;->t:Z

    .line 1965
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/a/i;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1257
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/a/i;->Q:Z

    .line 1258
    return-void
.end method

.method public c_(Z)V
    .locals 0

    .prologue
    .line 805
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 1346
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/a/i;->Q:Z

    .line 1347
    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1325
    return-void
.end method

.method public final d(Z)V
    .locals 1

    .prologue
    .line 859
    iget-boolean v0, p0, Landroid/support/v4/a/i;->P:Z

    if-eq v0, p1, :cond_0

    .line 860
    iput-boolean p1, p0, Landroid/support/v4/a/i;->P:Z

    .line 861
    iget-boolean v0, p0, Landroid/support/v4/a/i;->O:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/a/i;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6784
    iget-boolean v0, p0, Landroid/support/v4/a/i;->J:Z

    .line 861
    if-nez v0, :cond_0

    .line 862
    iget-object v0, p0, Landroid/support/v4/a/i;->D:Landroid/support/v4/a/p;

    invoke-virtual {v0}, Landroid/support/v4/a/p;->d()V

    .line 865
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 1363
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/a/i;->Q:Z

    .line 1364
    return-void
.end method

.method public final e(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 553
    iget v0, p0, Landroid/support/v4/a/i;->p:I

    if-ltz v0, :cond_0

    .line 554
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    :cond_0
    iput-object p1, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 557
    return-void
.end method

.method public final e(Z)V
    .locals 2

    .prologue
    .line 881
    iget-boolean v0, p0, Landroid/support/v4/a/i;->W:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v4/a/i;->k:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 882
    iget-object v0, p0, Landroid/support/v4/a/i;->C:Landroid/support/v4/a/r;

    invoke-virtual {v0, p0}, Landroid/support/v4/a/r;->a(Landroid/support/v4/a/i;)V

    .line 884
    :cond_0
    iput-boolean p1, p0, Landroid/support/v4/a/i;->W:Z

    .line 885
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/a/i;->V:Z

    .line 886
    return-void

    .line 885
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e_(Z)V
    .locals 1

    .prologue
    .line 841
    iget-boolean v0, p0, Landroid/support/v4/a/i;->O:Z

    if-eq v0, p1, :cond_0

    .line 842
    iput-boolean p1, p0, Landroid/support/v4/a/i;->O:Z

    .line 843
    invoke-virtual {p0}, Landroid/support/v4/a/i;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5784
    iget-boolean v0, p0, Landroid/support/v4/a/i;->J:Z

    .line 843
    if-nez v0, :cond_0

    .line 844
    iget-object v0, p0, Landroid/support/v4/a/i;->D:Landroid/support/v4/a/p;

    invoke-virtual {v0}, Landroid/support/v4/a/p;->d()V

    .line 847
    :cond_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 499
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final f()Landroid/content/Context;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Landroid/support/v4/a/i;->D:Landroid/support/v4/a/p;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/a/i;->D:Landroid/support/v4/a/p;

    .line 3166
    iget-object v0, v0, Landroid/support/v4/a/p;->c:Landroid/content/Context;

    goto :goto_0
.end method

.method final f(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 2112
    invoke-virtual {p0, p1}, Landroid/support/v4/a/i;->d(Landroid/os/Bundle;)V

    .line 2113
    iget-object v0, p0, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    if-eqz v0, :cond_0

    .line 2114
    iget-object v0, p0, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    invoke-virtual {v0}, Landroid/support/v4/a/r;->h()Landroid/os/Parcelable;

    move-result-object v0

    .line 2115
    if-eqz v0, :cond_0

    .line 2116
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2119
    :cond_0
    return-void
.end method

.method public final g()Landroid/support/v4/a/k;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Landroid/support/v4/a/i;->D:Landroid/support/v4/a/p;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/a/i;->D:Landroid/support/v4/a/p;

    .line 4162
    iget-object v0, v0, Landroid/support/v4/a/p;->b:Landroid/app/Activity;

    .line 626
    check-cast v0, Landroid/support/v4/a/k;

    goto :goto_0
.end method

.method public final h()Landroid/content/res/Resources;
    .locals 3

    .prologue
    .line 641
    iget-object v0, p0, Landroid/support/v4/a/i;->D:Landroid/support/v4/a/p;

    if-nez v0, :cond_0

    .line 642
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 644
    :cond_0
    iget-object v0, p0, Landroid/support/v4/a/i;->D:Landroid/support/v4/a/p;

    .line 4166
    iget-object v0, v0, Landroid/support/v4/a/p;->c:Landroid/content/Context;

    .line 644
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 506
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Landroid/support/v4/a/q;
    .locals 2

    .prologue
    .line 699
    iget-object v0, p0, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    if-nez v0, :cond_0

    .line 700
    invoke-virtual {p0}, Landroid/support/v4/a/i;->s()V

    .line 701
    iget v0, p0, Landroid/support/v4/a/i;->k:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 702
    iget-object v0, p0, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    invoke-virtual {v0}, Landroid/support/v4/a/r;->l()V

    .line 711
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    return-object v0

    .line 703
    :cond_1
    iget v0, p0, Landroid/support/v4/a/i;->k:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    .line 704
    iget-object v0, p0, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    invoke-virtual {v0}, Landroid/support/v4/a/r;->k()V

    goto :goto_0

    .line 705
    :cond_2
    iget v0, p0, Landroid/support/v4/a/i;->k:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 706
    iget-object v0, p0, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    invoke-virtual {v0}, Landroid/support/v4/a/r;->j()V

    goto :goto_0

    .line 707
    :cond_3
    iget v0, p0, Landroid/support/v4/a/i;->k:I

    if-lez v0, :cond_0

    .line 708
    iget-object v0, p0, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    invoke-virtual {v0}, Landroid/support/v4/a/r;->i()V

    goto :goto_0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Landroid/support/v4/a/i;->D:Landroid/support/v4/a/p;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/a/i;->v:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 772
    invoke-virtual {p0}, Landroid/support/v4/a/i;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4784
    iget-boolean v0, p0, Landroid/support/v4/a/i;->J:Z

    .line 772
    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1128
    iput-boolean v1, p0, Landroid/support/v4/a/i;->Q:Z

    .line 1129
    iget-object v0, p0, Landroid/support/v4/a/i;->D:Landroid/support/v4/a/p;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1130
    :goto_0
    if-eqz v0, :cond_0

    .line 1131
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/a/i;->Q:Z

    .line 9143
    iput-boolean v1, p0, Landroid/support/v4/a/i;->Q:Z

    .line 1134
    :cond_0
    return-void

    .line 1129
    :cond_1
    iget-object v0, p0, Landroid/support/v4/a/i;->D:Landroid/support/v4/a/p;

    .line 8162
    iget-object v0, v0, Landroid/support/v4/a/p;->b:Landroid/app/Activity;

    goto :goto_0
.end method

.method public o()V
    .locals 1

    .prologue
    .line 1302
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/a/i;->Q:Z

    .line 1303
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 1328
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/a/i;->Q:Z

    .line 1329
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .prologue
    .line 1515
    invoke-virtual {p0}, Landroid/support/v4/a/i;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/a/k;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1516
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 1350
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/a/i;->Q:Z

    .line 1351
    return-void
.end method

.method public p()V
    .locals 1

    .prologue
    .line 1337
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/a/i;->Q:Z

    .line 1338
    return-void
.end method

.method public q()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1371
    iput-boolean v1, p0, Landroid/support/v4/a/i;->Q:Z

    .line 1374
    iget-boolean v0, p0, Landroid/support/v4/a/i;->Z:Z

    if-nez v0, :cond_0

    .line 1375
    iput-boolean v1, p0, Landroid/support/v4/a/i;->Z:Z

    .line 1376
    iget-object v0, p0, Landroid/support/v4/a/i;->D:Landroid/support/v4/a/p;

    iget-object v1, p0, Landroid/support/v4/a/i;->q:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/a/i;->Y:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/a/p;->a(Ljava/lang/String;ZZ)Landroid/support/v4/a/ai;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/a/i;->X:Landroid/support/v4/a/ai;

    .line 1378
    :cond_0
    iget-object v0, p0, Landroid/support/v4/a/i;->X:Landroid/support/v4/a/ai;

    if-eqz v0, :cond_1

    .line 1379
    iget-object v0, p0, Landroid/support/v4/a/i;->X:Landroid/support/v4/a/ai;

    invoke-virtual {v0}, Landroid/support/v4/a/ai;->g()V

    .line 1381
    :cond_1
    return-void
.end method

.method final s()V
    .locals 3

    .prologue
    .line 1919
    new-instance v0, Landroid/support/v4/a/r;

    invoke-direct {v0}, Landroid/support/v4/a/r;-><init>()V

    iput-object v0, p0, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    .line 1920
    iget-object v0, p0, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    iget-object v1, p0, Landroid/support/v4/a/i;->D:Landroid/support/v4/a/p;

    new-instance v2, Landroid/support/v4/a/i$1;

    invoke-direct {v2, p0}, Landroid/support/v4/a/i$1;-><init>(Landroid/support/v4/a/i;)V

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/a/r;->a(Landroid/support/v4/a/p;Landroid/support/v4/a/n;Landroid/support/v4/a/i;)V

    .line 1935
    return-void
.end method

.method final t()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2146
    iget-object v0, p0, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    if-eqz v0, :cond_0

    .line 2147
    iget-object v0, p0, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    .line 10080
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/a/r;->c(I)V

    .line 2149
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/a/i;->Y:Z

    if-eqz v0, :cond_2

    .line 2150
    iput-boolean v3, p0, Landroid/support/v4/a/i;->Y:Z

    .line 2151
    iget-boolean v0, p0, Landroid/support/v4/a/i;->Z:Z

    if-nez v0, :cond_1

    .line 2152
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/a/i;->Z:Z

    .line 2153
    iget-object v0, p0, Landroid/support/v4/a/i;->D:Landroid/support/v4/a/p;

    iget-object v1, p0, Landroid/support/v4/a/i;->q:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/a/i;->Y:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/a/p;->a(Ljava/lang/String;ZZ)Landroid/support/v4/a/ai;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/a/i;->X:Landroid/support/v4/a/ai;

    .line 2155
    :cond_1
    iget-object v0, p0, Landroid/support/v4/a/i;->X:Landroid/support/v4/a/ai;

    if-eqz v0, :cond_2

    .line 2156
    iget-boolean v0, p0, Landroid/support/v4/a/i;->N:Z

    if-eqz v0, :cond_3

    .line 2157
    iget-object v0, p0, Landroid/support/v4/a/i;->X:Landroid/support/v4/a/ai;

    invoke-virtual {v0}, Landroid/support/v4/a/ai;->d()V

    .line 2163
    :cond_2
    :goto_0
    return-void

    .line 2159
    :cond_3
    iget-object v0, p0, Landroid/support/v4/a/i;->X:Landroid/support/v4/a/ai;

    invoke-virtual {v0}, Landroid/support/v4/a/ai;->c()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 512
    invoke-static {p0, v0}, Landroid/support/v4/e/c;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 513
    iget v1, p0, Landroid/support/v4/a/i;->p:I

    if-ltz v1, :cond_0

    .line 514
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    iget v1, p0, Landroid/support/v4/a/i;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 517
    :cond_0
    iget v1, p0, Landroid/support/v4/a/i;->G:I

    if-eqz v1, :cond_1

    .line 518
    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    iget v1, p0, Landroid/support/v4/a/i;->G:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    :cond_1
    iget-object v1, p0, Landroid/support/v4/a/i;->I:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 522
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    iget-object v1, p0, Landroid/support/v4/a/i;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
