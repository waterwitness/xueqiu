.class public Lcom/xueqiu/android/common/b;
.super Landroid/support/v7/a/f;
.source "BaseActivity.java"

# interfaces
.implements Lcom/xueqiu/android/base/b/q;
.implements Lcom/xueqiu/android/base/util/am;


# instance fields
.field private j:Landroid/view/GestureDetector;

.field private k:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/xueqiu/android/base/b/x;",
            ">;"
        }
    .end annotation
.end field

.field protected l:Landroid/app/Dialog;

.field public m:Z

.field public n:Z

.field public o:Landroid/content/BroadcastReceiver;

.field private final p:Lrx/d/c/j;

.field private q:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Landroid/support/v7/a/f;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/b;->k:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 56
    new-instance v0, Lrx/d/c/j;

    invoke-direct {v0}, Lrx/d/c/j;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/b;->p:Lrx/d/c/j;

    .line 58
    iput-boolean v1, p0, Lcom/xueqiu/android/common/b;->q:Z

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/common/b;->m:Z

    .line 62
    iput-boolean v1, p0, Lcom/xueqiu/android/common/b;->n:Z

    return-void
.end method

.method public static g()Lcom/xueqiu/android/base/b/ai;
    .locals 1

    .prologue
    .line 180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(II)V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Landroid/support/v7/a/f;->finish()V

    .line 102
    invoke-virtual {p0}, Lcom/xueqiu/android/common/b;->i()V

    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/xueqiu/android/common/b;->overridePendingTransition(II)V

    .line 104
    return-void
.end method

.method public final a(Landroid/content/Intent;III)V
    .locals 2

    .prologue
    .line 162
    invoke-super {p0, p1, p2}, Landroid/support/v7/a/f;->startActivityForResult(Landroid/content/Intent;I)V

    .line 163
    const-string v0, "show_custom_anim"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0, p3, p4}, Lcom/xueqiu/android/common/b;->overridePendingTransition(II)V

    .line 166
    :cond_0
    return-void
.end method

.method public final a(Lcom/xueqiu/android/base/b/x;)V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/xueqiu/android/common/b;->k:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 285
    return-void
.end method

.method public final a(Lrx/j;)V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/xueqiu/android/common/b;->p:Lrx/d/c/j;

    invoke-virtual {v0, p1}, Lrx/d/c/j;->a(Lrx/j;)V

    .line 217
    return-void
.end method

.method public final c_(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/xueqiu/android/common/b;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const/4 v0, 0x0

    .line 201
    :goto_0
    return-object v0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/b;->l:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/xueqiu/android/common/b;->l:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 199
    :cond_1
    new-instance v0, Lcom/xueqiu/android/common/widget/ae;

    invoke-direct {v0, p0, p1}, Lcom/xueqiu/android/common/widget/ae;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/b;->l:Landroid/app/Dialog;

    .line 200
    iget-object v0, p0, Lcom/xueqiu/android/common/b;->l:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 201
    iget-object v0, p0, Lcom/xueqiu/android/common/b;->l:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/xueqiu/android/common/b;->w_()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xueqiu/android/common/b;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/b;->j:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/a/f;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 115
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const v0, 0x7f0a005a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/b;->setTheme(I)V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    const v0, 0x7f0a0058

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/b;->setTheme(I)V

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 97
    const v0, 0x7f040014

    const v1, 0x7f040017

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/common/b;->a(II)V

    .line 98
    return-void
.end method

.method public final h()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 189
    const v0, 0x7f0702fb

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/b;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/b;->c_(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/xueqiu/android/common/b;->l:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/b;->l:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/common/b;->l:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/common/b;->l:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isDestroyed()Z
    .locals 2

    .prologue
    .line 259
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 260
    iget-boolean v0, p0, Lcom/xueqiu/android/common/b;->q:Z

    .line 262
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/support/v7/a/f;->isDestroyed()Z

    move-result v0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/xueqiu/android/common/b;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/xueqiu/android/common/MainActivity;

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/common/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 298
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/b;->startActivity(Landroid/content/Intent;)V

    .line 299
    invoke-virtual {p0}, Lcom/xueqiu/android/common/b;->finish()V

    .line 303
    :goto_0
    return-void

    .line 302
    :cond_0
    invoke-super {p0}, Landroid/support/v7/a/f;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 72
    invoke-virtual {p0}, Lcom/xueqiu/android/common/b;->e()V

    .line 73
    invoke-super {p0, p1}, Landroid/support/v7/a/f;->onCreate(Landroid/os/Bundle;)V

    .line 1066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 75
    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->b(Z)V

    .line 2066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Z)V

    .line 78
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/b;->c()V

    .line 80
    iput-boolean v1, p0, Lcom/xueqiu/android/common/b;->n:Z

    .line 81
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/xueqiu/android/base/util/al;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/util/al;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/b;->j:Landroid/view/GestureDetector;

    .line 83
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/d/a/b/f;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/xueqiu/android/common/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/n;->a(Landroid/content/Context;)Lcom/d/a/b/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/d/a/b/f;->a(Lcom/d/a/b/h;)V

    .line 88
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/common/b;->n:Z

    .line 234
    iget-object v0, p0, Lcom/xueqiu/android/common/b;->k:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/xueqiu/android/common/b;->k:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/base/b/x;

    .line 5336
    iget-boolean v2, v0, Lcom/android/volley/n;->h:Z

    .line 236
    if-nez v2, :cond_0

    .line 6180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    .line 237
    invoke-virtual {v2, v0}, Lcom/xueqiu/android/base/b/ai;->a(Lcom/xueqiu/android/base/b/x;)V

    goto :goto_0

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/b;->k:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 242
    iget-object v0, p0, Lcom/xueqiu/android/common/b;->p:Lrx/d/c/j;

    invoke-virtual {v0}, Lrx/d/c/j;->b()V

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/common/b;->q:Z

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/common/b;->o:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 247
    invoke-static {p0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/b;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :cond_2
    :goto_1
    invoke-static {}, Lcom/xueqiu/android/base/l;->a()Lcom/xueqiu/android/base/l;

    invoke-static {}, Lcom/xueqiu/android/base/l;->b()Lcom/xueqiu/android/base/m;

    .line 255
    invoke-super {p0}, Landroid/support/v7/a/f;->onDestroy()V

    .line 256
    return-void

    .line 251
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 124
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 129
    invoke-super {p0, p1}, Landroid/support/v7/a/f;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 126
    :pswitch_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/b;->onBackPressed()V

    .line 127
    const/4 v0, 0x1

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 227
    invoke-super {p0}, Landroid/support/v7/a/f;->onPause()V

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/common/b;->n:Z

    .line 229
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 221
    invoke-super {p0}, Landroid/support/v7/a/f;->onResume()V

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/common/b;->n:Z

    .line 223
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 133
    invoke-super {p0}, Landroid/support/v7/a/f;->onStart()V

    .line 134
    iput-boolean v1, p0, Lcom/xueqiu/android/common/b;->n:Z

    .line 135
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    move-result-object v0

    .line 3442
    iget-boolean v0, v0, Lcom/xueqiu/android/base/b;->c:Z

    .line 135
    if-nez v0, :cond_0

    .line 136
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b;->a(Z)V

    .line 4068
    :cond_0
    sget-boolean v0, Lcom/xueqiu/android/base/util/v;->a:Z

    if-eqz v0, :cond_1

    .line 4069
    const-string v0, "ZDP9ZZFJ6BNR8QQCFDPT"

    .line 4074
    :goto_0
    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 4075
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 4076
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 139
    return-void

    .line 5041
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/g;->a()Lcom/xueqiu/android/base/f;

    move-result-object v0

    .line 4071
    invoke-virtual {v0}, Lcom/xueqiu/android/base/f;->a()Lcom/xueqiu/android/common/model/ClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/ClientInfo;->getFlurryApiKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Landroid/support/v7/a/f;->onStop()V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/common/b;->n:Z

    .line 5081
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 5083
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 5084
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 146
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 92
    .line 3066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p1}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    .prologue
    .line 158
    const v0, 0x7f040016

    const v1, 0x7f040015

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/xueqiu/android/common/b;->a(Landroid/content/Intent;III)V

    .line 159
    return-void
.end method

.method public w_()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public x_()V
    .locals 0

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/xueqiu/android/common/b;->onBackPressed()V

    .line 186
    return-void
.end method

.method public final z_()Z
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/xueqiu/android/common/b;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
