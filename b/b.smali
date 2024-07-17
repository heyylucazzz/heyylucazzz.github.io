.class public final Lb/b;
.super Lde/robv/android/xposed/XC_MethodReplacement;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lio/github/heyylucazzz/imnotadeveloper/xposed/Main;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lio/github/heyylucazzz/imnotadeveloper/xposed/Main;Ljava/util/ArrayList;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lb/b;->a:Lio/github/heyylucazzz/imnotadeveloper/xposed/Main;

    .line 3
    iput-object p2, p0, Lb/b;->b:Ljava/util/ArrayList;

    .line 5
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodReplacement;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final replaceHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .registers 6

    .line 1
    const-string v0, "param"

    .line 3
    invoke-static {p1, v0}, Lc/a;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lb/b;->a:Lio/github/heyylucazzz/imnotadeveloper/xposed/Main;

    .line 8
    invoke-static {v0, p1}, Lio/github/heyylucazzz/imnotadeveloper/xposed/Main;->a(Lio/github/heyylucazzz/imnotadeveloper/xposed/Main;Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V

    .line 11
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    .line 13
    const/4 v2, 0x1

    .line 14
    aget-object v1, v1, v2

    .line 16
    instance-of v2, v1, Ljava/lang/String;

    .line 18
    if-eqz v2, :cond_16

    .line 20
    check-cast v1, Ljava/lang/String;

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 v1, 0x0

    .line 24
    :goto_17
    const-string v2, "<this>"

    .line 26
    iget-object v3, p0, Lb/b;->b:Ljava/util/ArrayList;

    .line 28
    invoke-static {v3, v2}, Lc/a;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_27

    .line 37
    const-string p1, "0"

    .line 39
    goto :goto_2b

    .line 40
    :cond_27
    invoke-static {v0, p1}, Lio/github/heyylucazzz/imnotadeveloper/xposed/Main;->b(Lio/github/heyylucazzz/imnotadeveloper/xposed/Main;Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;

    .line 43
    move-result-object p1

    .line 44
    :goto_2b
    return-object p1
.end method
